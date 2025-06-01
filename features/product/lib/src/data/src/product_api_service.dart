import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '/src/domain/models/response/product_res.dart';

part 'product_api_service.g.dart';

@RestApi()
abstract class ProductApiService {
  factory ProductApiService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ProductApiService;

  @GET('/payment/package/categories')
  Future<HttpResponse<ProductRes>> getProducts();
}
