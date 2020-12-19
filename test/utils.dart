import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class DioAdapterMock extends Mock implements HttpClientAdapter {}

class DioMatcher {
  const DioMatcher(BaseOptions options) : _options = options;

  final BaseOptions _options;

  DioOptionsMatcher optionsWithGet(String path,
      [Map<String, dynamic> queryParameters]) {
    final requestOptions = _mergeOptions('GET', path, queryParameters);
    return DioOptionsMatcher(requestOptions);
  }

  DioOptionsMatcher optionsWithHead(String path,
      [Map<String, dynamic> queryParameters]) {
    final requestOptions = _mergeOptions('HEAD', path, queryParameters);
    return DioOptionsMatcher(requestOptions);
  }

  DioOptionsMatcher optionsWithPost(String path,
      [Map<String, dynamic> queryParameters]) {
    final requestOptions = _mergeOptions('Post', path, queryParameters);
    return DioOptionsMatcher(requestOptions);
  }

  DioOptionsMatcher optionsWithPatch(String path,
      [Map<String, dynamic> queryParameters]) {
    final requestOptions = _mergeOptions('PATCH', path, queryParameters);
    return DioOptionsMatcher(requestOptions);
  }

  DioOptionsMatcher optionsWithDelete(String path,
      [Map<String, dynamic> queryParameters]) {
    final requestOptions = _mergeOptions('DELETE', path, queryParameters);
    return DioOptionsMatcher(requestOptions);
  }

  RequestOptions _mergeOptions(
          String method, String path, Map<String, dynamic> queryParameters) =>
      RequestOptions(
        method: method,
        path: path,
        queryParameters: queryParameters,
        baseUrl: _options.baseUrl,
        extra: _options.extra,
        headers: _options.headers,
        responseType: _options.responseType,
        contentType: _options.contentType,
        validateStatus: _options.validateStatus,
        receiveDataWhenStatusError: _options.receiveDataWhenStatusError,
        followRedirects: _options.followRedirects,
        maxRedirects: _options.maxRedirects,
        requestEncoder: _options.requestEncoder,
        responseDecoder: _options.responseDecoder,
      );
}

class DioOptionsMatcher extends Matcher {
  DioOptionsMatcher(this._options);

  final RequestOptions _options;

  @override
  Description describe(Description description) =>
      description.add('DioOptionsMatcher');

  @override
  // ignore: type_annotate_public_apis
  bool matches(item, Map matchState) {
    if (item is RequestOptions) {
      return _options.method == item.method &&
          _options.path == item.path &&
          _isEqual2(_options.queryParameters, item.queryParameters) &&
          _isEqual2(_options.baseUrl, item.baseUrl) &&
          _isEqual2(_options.responseType, item.responseType) &&
          _isEqual2(_options.contentType, item.contentType) &&
          _isEqual2(_options.validateStatus, item.validateStatus) &&
          _isEqual2(_options.receiveDataWhenStatusError,
              _options.receiveDataWhenStatusError) &&
          _isEqual2(_options.followRedirects, item.followRedirects) &&
          _isEqual2(_options.maxRedirects, item.maxRedirects);
    }
    return false;
  }

  bool _isEqual2(Object l, Object r) => l == null || l == r;
}

Future<ResponseBody> Function(Invocation) dioResult(
    [FutureOr<dynamic> data = '', int statusCode = 200]) {
  return (_) async {
    final value = await data;
    return value is String
        ? ResponseBody.fromString(value, statusCode)
        : ResponseBody.fromBytes(value, statusCode);
  };
}
