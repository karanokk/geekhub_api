import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:html/dom.dart' show Element;

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

int parseTime(String s) {
  if (s.endsWith('分钟前')) {
    if (s.startsWith('不到')) {
      return DateTime.now().millisecondsSinceEpoch;
    }
    final minutes = int.parse(s.substring(0, s.length - 4));
    return DateTime.now()
        .add(Duration(minutes: -minutes))
        .millisecondsSinceEpoch;
  } else if (s.endsWith('小时前')) {
    final hours = int.parse(s.substring(0, s.length - 4));
    return DateTime.now().add(Duration(hours: -hours)).millisecondsSinceEpoch;
  } else if (s.endsWith('天前')) {
    final days = int.parse(s.substring(0, s.length - 3));
    return DateTime.now().add(Duration(days: -days)).millisecondsSinceEpoch;
  } else if (s.endsWith('个月前')) {
    final months = int.parse(s.substring(0, s.length - 4));
    return DateTime.now()
        .add(Duration(days: -months * 30))
        .millisecondsSinceEpoch;
  }
  throw Exception('Unexpected time description.');
}

String snakeToCamel(String text) {
  final StringBuffer sb = StringBuffer();
  bool foundSymbol = false;
  for (int i = 0; i < text.length; i++) {
    final ch = text[i];
    if (ch == '_') {
      foundSymbol = true;
      continue;
    }

    if (foundSymbol) {
      sb.write(ch.toUpperCase());
      foundSymbol = false;
    } else {
      sb.write(ch);
    }
  }
  return sb.toString();
}

String camelToSnake(String text) {
  final StringBuffer sb = StringBuffer();
  for (int i = 0; i < text.length; i++) {
    final ch = text[i];
    final lowerCh = ch.toLowerCase();
    if (lowerCh != ch && i != 0) {
      sb.write('_');
    }
    sb.write(lowerCh);
  }
  return sb.toString();
}

extension ElementHelper on Element {
  String get href => _checkAttributeURL('href');

  String get src => _checkAttributeURL('src');

  String get title => attributes['title'];

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String _checkAttributeURL(String attrName) {
    final attr = attributes[attrName];
    return attr.startsWith('/') ? 'https://www.geekhub.com$attr' : attr;
  }
}
