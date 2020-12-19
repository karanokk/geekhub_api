import 'dart:io';

import 'package:geekhub_api/src/faliures.dart';
import 'package:geekhub_api/src/utils.dart';
import 'package:test/test.dart';

void main() {
  group('extractCSRFToken', () {
    test('从网页文本提取', () async {
      final faqHTMLStr =
          await File('test/testdata/gh-page-faq.html').readAsString();
      final token = extractCSRFToken(faqHTMLStr);
      expect(
          token,
          equals('nMv-YyOrR4KaWqQYnJPQ7fJigvWCz-bysWxtxbVFlX1iGR'
              '_rGomVe0XqUHWYtEBHuENKhD89bIwAF5Q-4zhOZQ'));
      expect(() => extractCSRFToken(''),
          throwsA(const TypeMatcher<GeekHubAPIFaliure>()));
    });

    test('从错误文本提取抛出异常', () async {
      try {
        extractCSRFToken('???');
      } on GeekHubAPIFaliure catch (f, _) {
        expect(f.maybeMap(unableToParse: (_) => true, orElse: () => false),
            isTrue);
      }
    });
  });
}