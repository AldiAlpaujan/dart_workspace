import 'dart:io' show HttpStatus;
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'base_data_state.dart';

abstract class ApiRepository {
  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == HttpStatus.ok ||
          httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess<T>(httpResponse.data);
      } else {
        throw DioException(
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        );
      }
    } on DioException catch (err) {
      return DataFailed(err);
    } catch (err, stackTrace) {
      if (kDebugMode) {
        print('ERROR DATA TYPE');
        print(err);
        print(stackTrace);
      }
      return ErrorDataType();
    }
  }
}
