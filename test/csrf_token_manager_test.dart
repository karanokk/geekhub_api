import 'dart:io';

import 'package:dio/dio.dart';
import 'package:geekhub_api/src/csrf_token_manager.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'utils.dart' show dioResult, DioMatcher, DioAdapterMock;

void main() {
  const url = '';
  const expireDuration = Duration(seconds: 2);

  Dio dio;
  Dio tokenDio;
  DioAdapterMock dioAdapterMock;
  DioAdapterMock tokenDioAdapterMock;
  CSRFTokenManager csrfTokenManager;

  setUp(() {
    dioAdapterMock = DioAdapterMock();
    tokenDioAdapterMock = DioAdapterMock();
    dio = Dio()..httpClientAdapter = dioAdapterMock;
    tokenDio = Dio()..httpClientAdapter = tokenDioAdapterMock;
    csrfTokenManager = CSRFTokenManager(dio,
        tokenDio: tokenDio, expireDuration: expireDuration);
    dio.interceptors.add(csrfTokenManager);
  });

  bool _responseHasCSRFToken(Response response) {
    final data = response.request.data;
    if (data == null) {
      return false;
    }
    final formData = data as FormData;
    return formData.fields.firstWhere(
            (element) => element.value == csrfTokenManager.csrfToken) !=
        null;
  }

  group('.onRequest()', () {
    DioMatcher dioMatcher;

    setUp(() {
      dioMatcher = DioMatcher(dio.options);
      final tokenOptions = dioMatcher.optionsWithGet(csrfTokenManager.tokenUrl);

      when(dioAdapterMock.fetch(any, any, any)).thenAnswer(dioResult());
      when(tokenDioAdapterMock.fetch(argThat(tokenOptions), any, any))
          .thenAnswer(
              dioResult(File('test/testdata/gh-page-faq.html').readAsString()));
    });

    test('GET / HEAD 不会写入 token', () async {
      Response response;

      response = await dio.get(url);
      expect(_responseHasCSRFToken(response), isFalse);

      response = await dio.head(url);
      expect(_responseHasCSRFToken(response), isFalse);
    });

    test('POST / PATCH / DELETE 会写入 token', () async {
      Response response;

      response = await dio.post(url);
      expect(_responseHasCSRFToken(response), isTrue);

      response = await dio.patch(url);
      expect(_responseHasCSRFToken(response), isTrue);

      response = await dio.delete(url);
      expect(_responseHasCSRFToken(response), isTrue);
    });

    test('只有 token 过期了，才会请求 token', () async {
      expect(csrfTokenManager.tokenIsExipired(), isTrue);

      await dio.post(url);
      verify(tokenDioAdapterMock.fetch(any, any, any)).called(1);
      expect(csrfTokenManager.tokenIsExipired(), isFalse);

      await dio.post(url);
      verifyNever(tokenDioAdapterMock.fetch(any, any, any));
      expect(csrfTokenManager.tokenIsExipired(), isFalse);
    });

    test('token 会在指定时间后过期', () async {
      await dio.post(url);
      expect(csrfTokenManager.tokenIsExipired(), false);
      await Future.delayed(expireDuration);
      expect(csrfTokenManager.tokenIsExipired(), true);
    });
  });
}
