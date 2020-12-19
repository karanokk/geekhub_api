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
