import 'package:dio/dio.dart';
import 'interceptor.dart';

Dio initDio(String baseUrl) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json,
      followRedirects: false,
    ),
  )..interceptors.add(DioInterceptor());
}
