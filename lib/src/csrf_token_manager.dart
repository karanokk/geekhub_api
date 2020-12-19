import 'package:dio/dio.dart';

import 'utils.dart' show extractCSRFToken;

/// 为 GeekHub 的请求添加 CSRFToken
/// 利用 Dio 的拦截器，在发送请求时,根据需求获取 CSRFToken 并添加到到请求的表单中。
class CSRFTokenManager extends Interceptor {
  /// [dio] 为主要请求的 Dio 实例。
  /// [tokenDio] 当需要请求 token，[dio] 实例将被锁定，使用 [tokenDio] 请求。
  /// [expireDuration] 设置token 过期时间。
  /// [tokenUrl] 设置提取 token 的网页地址。
  CSRFTokenManager(Dio dio,
      {Dio tokenDio, Duration expireDuration, this.tokenUrl = '/page/faq'})
      : _dio = dio,
        _tokenDio = tokenDio ?? Dio(dio.options),
        _expireDuration = (expireDuration ??
                const Duration(milliseconds: Duration.millisecondsPerHour * 2))
            .inMilliseconds;

  final Dio _dio;
  final Dio _tokenDio;
  final int _expireDuration;
  final String tokenUrl;

  String _csrfToken;
  int _csrfTokenCreatedAt;

  String get csrfToken => _csrfToken;

  @override
  Future onRequest(RequestOptions options) async {
    if (options.method != 'GET' && options.method != 'HEAD') {
      if (tokenIsExipired() || _csrfToken == null) {
        await refreshToken();
      }
      options.headers['X-CSRF-Token'] = _csrfToken;
      options.data ??= FormData();
      options.data.fields.add(MapEntry('authenticity_token', _csrfToken));
    }
    return super.onRequest(options);
  }

  /// 查询 token 是否过期
  bool tokenIsExipired() =>
      _csrfTokenCreatedAt == null ||
      DateTime.now().millisecondsSinceEpoch - _csrfTokenCreatedAt >
          _expireDuration;

  /// 刷新 token
  /// 通常不应该调用此方法，token 会自动刷新。
  Future<void> refreshToken() async {
    _csrfToken = await _getToken();
    _csrfTokenCreatedAt = DateTime.now().millisecondsSinceEpoch;
  }

  Future<String> _getToken() async {
    _dio.lock();
    final response = await _tokenDio.get(tokenUrl);
    final token = extractCSRFToken(response.data);
    _dio.unlock();
    return token;
  }
}
