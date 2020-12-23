import 'dart:io';

import 'package:dio/dio.dart';

import '../faliures.dart';

class AuthState extends Interceptor {
  AuthState(this.signInPath);
  final String signInPath;

  @override
  Future onResponse(Response response) async {
    final request = response.request;
    if (request.path != signInPath &&
        response.statusCode == 302 &&
        response.headers[HttpHeaders.locationHeader].first
            .endsWith(signInPath)) {
      throw const GeekHubAPIFaliure.unAuthenticated();
    }
    return super.onResponse(response);
  }
}
