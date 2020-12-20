import 'package:dio/dio.dart';
import 'package:geekhub_api/src/faliures.dart';

class AuthState extends Interceptor {
  AuthState(this.signInPath);
  final String signInPath;

  @override
  Future onResponse(Response response) async {
    final request = response.request;
    if (request.path != signInPath &&
        response.statusCode == 302 &&
        response.headers['location'].first.endsWith(signInPath)) {
      throw const GeekHubAPIFaliure.unAuthenticated();
    }
    return super.onResponse(response);
  }
}
