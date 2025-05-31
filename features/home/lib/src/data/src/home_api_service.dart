import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:home/src/domain/models/response/product_res.dart';

part 'home_api_service.g.dart';

@RestApi()
abstract class HomeApiService {
  factory HomeApiService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _HomeApiService;

  @GET('/payment/package/categories')
  Future<HttpResponse<ProductRes>> getProducts();
}
