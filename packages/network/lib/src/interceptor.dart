import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:network/src/logger.dart';
import 'package:session/session.dart';

class DioInterceptor extends Interceptor {
  final session = Session();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (session.getToken != '') {
      options.headers['Authorization'] = 'Bearer ${session.getToken}';
    }
    if (session.deviceId != '') {
      options.headers['X-DEVICE-ID'] = session.deviceId;
    }
    if (session.enableGroup) {
      options.headers['Group-Id'] = session.getGroupId;
    }
    if (kDebugMode) print('HEADERS ${options.headers}');
    logReq(
      '${options.method} ${options.path}',
      options.queryParameters,
      options.data,
    );
    print('HEADERS');
    print(options.headers.toString());
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
    if (response.requestOptions.method == 'GET') {
      logGet(response.data, response.requestOptions.path);
    } else {
      logPost(response.data, response.requestOptions.path);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // logging
    if (kDebugMode) print(err);
    logError(err.response, err.requestOptions.path);

    // check internet connection
    if (err.error is SocketException ||
        err.type == DioExceptionType.connectionTimeout) {
      // bad connection
    }
    switch (err.response?.statusCode) {
      case HttpStatus.unauthorized: // 401
        _goToLogin();
        super.onError(err, handler);
        break;
      case HttpStatus.internalServerError: // 500
        super.onError(err, handler);
        break;
      case HttpStatus.badRequest: // 400
        super.onError(err, handler);
        break;
      default:
        super.onError(err, handler);
    }
  }

  void _goToLogin() {
    // session.setToken('');
    // session.setTokenRefresh('');
    // nav.replaceAll([const Login()]);
  }
}
