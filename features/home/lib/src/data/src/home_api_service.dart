import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:home/src/domain/models/response/product_res.dart';

part 'home_api_service.g.dart';

@RestApi()
abstract class HomeApiService {
  @factoryMethod
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET('/payment/package/categories')
  Future<HttpResponse<ProductRes>> getProducts();
}
