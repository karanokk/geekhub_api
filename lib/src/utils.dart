import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

import 'faliures.dart';

String extractCSRFToken(String content) {
  final tokenRegExp = RegExp('(?<=<meta name="csrf-token" content=").*(?=")');
  final result = tokenRegExp.firstMatch(content);
  if (result == null) {
    throw const GeekHubAPIFaliure.unableToParse('CSRF Token not found.');
  }
  final token = content.substring(result.start, result.end);
  return token;
}

/// Dio 拦截器抛出的异常会被二次封装成 [DioError]
/// 这里则会将自定义的异常 [GeekHubAPIFaliure] 解包出来。
class UnWrappedErrorDio extends DioForNative {
  UnWrappedErrorDio([BaseOptions options]) : super(options);

  @override
  Future<Response<T>> request<T>(
    String path, {
    dynamic data,
    Map<String, dynamic> queryParameters,
    CancelToken cancelToken,
    Options options,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) {
    return super
        .request<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: options,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) => response, onError: (e) {
      if (e is DioError && e.error is GeekHubAPIFaliure) {
        throw e.error;
      }
      throw e;
    });
  }
}
