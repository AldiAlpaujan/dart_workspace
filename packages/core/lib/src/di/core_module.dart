import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module
abstract class CoreModules {
  // router
  // dio
  @singleton
  Dio get dio => initDio('https://api-dev.jadinakes.id/v3');
  // session
}
