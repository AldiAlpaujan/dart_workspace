import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module
abstract class CoreModules {
  // router
  // dio
  Dio get dio => initDio('');
  // session
}
