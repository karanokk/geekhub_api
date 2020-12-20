import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

import 'faliures.dart';
import 'interceptors/auth_state.dart';
import 'interceptors/csrf_token_manager.dart';
import 'utils.dart' show UnWrappedErrorDio;

class GeekHubAPI {
  GeekHubAPI({UnWrappedErrorDio dio, @required String cookieDir})
      : assert(cookieDir != null),
        _dio = dio ?? UnWrappedErrorDio() {
    _dio.options = _dio.options.merge(
      baseUrl: 'https://www.geekhub.com',
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

  // ------------------------- //
  //          状态更新          //
  // ------------------------- //

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

  /// PATCH /comments/[commentId]/toggle_star
  Future<int> toggleCommentStar(int commentId) async {
    final response =
        await _dio.patch<String>('/comments/$commentId/toggle_star');
    if (response.statusCode != 200) {
      throw const GeekHubAPIFaliure.unexpected();
    }
    try {
      final items = response.data.split('"');
      final starCount = int.parse(items[items.length - 2]);
      return starCount;
    } catch (_) {
      throw const GeekHubAPIFaliure.unableToParse('无法解析星标数量');
    }
  }

  // PATCH https://geekhub.com/settings 302
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
}
