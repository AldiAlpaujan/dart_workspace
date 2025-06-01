import 'package:bases/bases.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import '../src/product_api_service.dart';
import '/src/domain/models/response/product_res.dart';
import '../../domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl extends ApiRepository implements ProductRepository {
  late final ProductApiService _productApiService;

  @postConstruct
  void init() {
    _productApiService = ProductApiService(di<Dio>());
  }

  @override
  Future<DataState<ProductRes>> getProduct() {
    return getStateOf(request: () => _productApiService.getProducts());
  }
}
