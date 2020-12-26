import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:geekhub_api/src/entities/user.dart';
import 'package:geekhub_api/src/parsers/user_parser.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

import 'entities/comment.dart';
import 'entities/feed.dart';
import 'entities/post.dart';
import 'faliures.dart';
import 'interceptors/auth_state.dart';
import 'interceptors/csrf_token_manager.dart';
import 'parsers/comment_parser.dart';
import 'parsers/feed_parser.dart';
import 'parsers/post_parser.dart';
import 'utils.dart' show UnWrappedErrorDio, camelToSnake;

class GeekHubAPI {
  GeekHubAPI({UnWrappedErrorDio dio, @required String cookieDir})
      : assert(cookieDir != null),
        _dio = dio ?? UnWrappedErrorDio() {
    _dio.options = _dio.options.merge(
      baseUrl: 'https://www.geekhub.com/',
      responseType: ResponseType.plain,
      validateStatus: (status) => status <= 302,
      followRedirects: false,
      headers: {
        HttpHeaders.acceptHeader: '*/*',
        HttpHeaders.hostHeader: 'www.geekhub.com',
        HttpHeaders.userAgentHeader:
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 '
                '(KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36',
      },
    );

    final cookieJar = PersistCookieJar(dir: cookieDir);
    _cookieManager = CookieManager(cookieJar);
    _log.fine('cookie 目录: "$cookieDir"');

    final tokenDio = UnWrappedErrorDio(_dio.options)
      ..interceptors.add(_cookieManager);
    final tokenManager = CSRFTokenManager(_dio, tokenDio: tokenDio);
    final authState = AuthState('/users/sign_in');

    _dio.interceptors.addAll([_cookieManager, tokenManager, authState]);
  }

  final Dio _dio;
  final _log = Logger('GeekHubAPI');

  CookieManager _cookieManager;

  /// 用户是否已登陆
  Future<bool> isUserAuthenticated() async {
    try {
      await _dio.head('/activities');
    } on GeekHubAPIFaliure {
      _log.fine('用户未登陆');
      return false;
    }
    _log.fine('用户已登陆');
    return true;
  }

  // ------------------------- //
  //            查看            //
  // ------------------------- //

  /// 刷新验证码
  ///
  /// [t] 当前时间戳（毫秒）
  ///
  /// GET /rucaptcha
  Future<List<int>> getRucaptcha({int t}) {
    Map<String, dynamic> queryParameters;
    if (t != null) {
      queryParameters = {'t': DateTime.now().millisecondsSinceEpoch};
    }
    return _dio
        .get<List<int>>(
          '/rucaptcha/',
          options: Options(responseType: ResponseType.bytes),
          queryParameters: queryParameters,
        )
        .then((value) => value.data);
  }

  /// 获取主页帖子
  ///
  /// GET /
  Future<List<Feed>> getFeeds({int page}) async {
    final response =
        await _dio.get<String>('/', queryParameters: {'page': page});
    try {
      return parseFeeds(response.data);
    } catch (_) {
      throw GeekHubAPIFaliure.unableToParse(response.request.uri.toString());
    }
  }

  /// 获取帖子
  ///
  /// [type] 帖子类型,如 auctions，[id] 帖子 id
  /// 或者直接使用 [path]，如 /auctions/96
  ///
  /// GET /[path]
  Future<Post> getPost({
    @required String type,
    @required int id,
    String path,
  }) async {
    final postPath = path ?? '/${camelToSnake(type)}s/$id';
    final response = await _dio.get<String>(postPath);
    try {
      return parsePost(response.data);
    } catch (_) {
      throw GeekHubAPIFaliure.unableToParse(response.request.uri.toString());
    }
  }

  /// 获取评论
  ///
  /// [type] 帖子类型,如 auctions，[id] 帖子 id
  /// 或者直接使用 [path]，如 /auctions/96
  ///
  /// GET /[path]
  Future<List<Comment>> getComments({
    @required String type,
    @required int id,
    @required int page,
    String path,
  }) async {
    final postPath = path ?? '/${camelToSnake(type)}/$id';
    final response =
        await _dio.get<String>(postPath, queryParameters: {'page': page});
    try {
      return parseComments(response.data);
    } catch (_) {
      throw GeekHubAPIFaliure.unableToParse(response.request.uri.toString());
    }
  }

  /// 获取帖子
  ///
  /// [type] 帖子类型,如 auctions，[id] 帖子 id
  /// 或者直接使用 [path]，如 /auctions/96
  ///
  /// GET /[path]
  Future<User> getUser({@required String name}) async {
    final response = await _dio.get<String>('/u/$name');
    try {
      return parseUser(response.data);
    } catch (_) {
      throw GeekHubAPIFaliure.unableToParse(response.request.uri.toString());
    }
  }

  // ------------------------- //
  //          状态更新          //
  // ------------------------- //

  /// Cookies 登陆
  Future<bool> signInWithCookies(List<Cookie> cookies) {
    _cookieManager.cookieJar
        .saveFromResponse(Uri.parse(_dio.options.baseUrl), cookies);
    return isUserAuthenticated();
  }

  /// 用户名密码登陆
  ///
  /// 成功重定向主页，失败重定向 /users/sign_in
  ///
  /// POST /users/sign_in
  Future<bool> signInWithNameAndPassword({
    @required String name,
    @required String password,
    @required String rucaptcha,
  }) async {
    final formData = FormData.fromMap({
      'user[login]': name,
      'user[password]': password,
      '_rucaptcha': rucaptcha,
      'user[remember_me]': 'on',
    });
    final response = await _dio.post('/users/sign_in', data: formData);
    if (response.statusCode == 302 &&
        response.headers[HttpHeaders.locationHeader].last ==
            _dio.options.baseUrl) {
      _log.fine('$name 登陆成功');
      return true;
    }
    _log.warning('$name 登陆失败 - ${response.toString()}');
    return false;
  }

  /// DELETE /users/sign_out
  Future<void> signOut() async {
    await _dio.delete('/users/sign_out');
    (_cookieManager.cookieJar as PersistCookieJar).deleteAll();
  }

  /// 签到
  /// POST /checkins
  Future<bool> checkIn() async {
    final formData = FormData.fromMap({'_method': 'POST'});
    final response = await _dio.post<String>(
      '/checkins',
      data: formData,
    );
    final result = response.data.contains('您已成功签到');
    return result;
  }

  /// 星标帖子
  /// POST /[path]/toggle_star
  Future<int> togglePostStar({
    @required String type,
    @required int id,
    String path,
  }) async {
    final postPath = path ?? '/${camelToSnake(type)}s/$id';
    final response = await _dio.post<String>('$postPath/toggle_star');
    if (response.statusCode != 200) {
      throw const GeekHubAPIFaliure.unexpected();
    }
    try {
      return _getStarCountFromResponse(response);
    } catch (_) {
      throw const GeekHubAPIFaliure.unableToParse('无法解析星标数量');
    }
  }

  /// 星标评论
  ///
  /// PATCH /comments/[commentId]/toggle_star
  Future<int> toggleCommentStar(int commentId) async {
    final response =
        await _dio.patch<String>('/comments/$commentId/toggle_star');
    if (response.statusCode != 200) {
      throw const GeekHubAPIFaliure.unexpected();
    }
    try {
      return _getStarCountFromResponse(response);
    } catch (_) {
      throw const GeekHubAPIFaliure.unableToParse('无法解析星标数量');
    }
  }

  /// 星标用户
  ///
  /// PATCH /u/[userId]/toggle_star
  Future<void> toggleUserStar(int userId) async {
    final response = await _dio.patch<String>('/u/$userId/toggle_star');
    if (response.statusCode != 200) {
      throw const GeekHubAPIFaliure.unexpected();
    }
  }

  /// 更新账户数据
  /// PATCH https://geekhub.com/settings 302
  Future<void> updateAccountSettings({
    // 账号信息
    String email,
    String signature,
    String website,
    String intro,
    String company,
    String job,
    String location,
    // 社交网络
    String twitter,
    String telegram,
    String wechat,
    String weibo,
    // 收货信息
    String receiveAddress,
    String contactPerson,
    String contactPhone,
    String secondContact,
    // 更改密码
    String currentPassword,
    String password,
    String passwordConfirmation,
    // 用户收款码
    List<int> wechatQRCode,
    List<int> alipayQRCode,
    // 用户头像
    List<int> avatar,
  }) async {
    final paramterMap = {
      'user[email]': email,
      'user[signature]': signature,
      'user[website]': website,
      'user[intro]': intro,
      'user[company]': company,
      'user[job]': job,
      'user[location]': location,
      'user[twitter]': twitter,
      'user[telegram]': telegram,
      'user[wechat]': wechat,
      'user[weibo]': weibo,
      'user[receive_address]': receiveAddress,
      'user[contact_person]': contactPerson,
      'user[contact_phone]': contactPhone,
      'user[second_contact]': secondContact,
      'user[currentPassword]': currentPassword,
      'user[password]': password,
      'user[password_confirmation]': passwordConfirmation,
    };
    final formData = FormData.fromMap(paramterMap);

    if (wechatQRCode != null) {
      formData.files.add(MapEntry(
          'user[wechat_qrcode]',
          MultipartFile.fromBytes(wechatQRCode,
              filename: 'geekhub_wechat_qrcode')));
    }
    if (alipayQRCode != null) {
      formData.files.add(MapEntry(
          'user[alipay_qrcode]',
          MultipartFile.fromBytes(alipayQRCode,
              filename: 'geekhub_alipay_qrcode')));
    }
    if (avatar != null) {
      formData.files.add(MapEntry('user[avatar]',
          MultipartFile.fromBytes(avatar, filename: 'geekhub_avatar')));
    }
    await _dio.patch('/settings', data: formData);
  }

  // ------------------------- //
  //            创建            //
  // ------------------------- //

  /// 评论
  /// POST /comments
  Future<void> comment({
    @required String targetType,
    @required int targetId,
    @required int counterBase,
    @required int relyToId,
    @required String ua,
    @required String content,
  }) async {
    final formData = FormData.fromMap({
      'comment[target_type]': targetType,
      'comment[target_id]': targetId,
      'comment[counter_base]': counterBase,
      'comment[reply_to_id]': relyToId,
      'comment[ua]': ua,
      'comment[content]': content,
    });
    final response = await _dio.post('/comments', data: formData);
    if (response.statusCode != 200) {
      throw const GeekHubAPIFaliure.unexpected();
    }
  }

  /// 可用于提供给浏览器，使用网页完成部分功能
  List<Cookie> getCookies() =>
      _cookieManager.cookieJar.loadForRequest(Uri.parse(_dio.options.baseUrl));

  int _getStarCountFromResponse(Response<String> response) {
    final items = response.data.split('"');
    final starCount = int.parse(items[items.length - 2]);
    return starCount;
  }
}
