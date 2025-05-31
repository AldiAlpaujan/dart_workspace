import 'package:bases/bases.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:home/src/data/src/home_api_service.dart';
import 'package:home/src/domain/models/response/product_res.dart';
import 'package:home/src/domain/repositories/home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends ApiRepository implements HomeRepository {
  late final HomeApiService _homeApiService;

  @postConstruct
  void init() {
    _homeApiService = HomeApiService(di<Dio>());
  }

  @override
  Future<DataState<ProductRes>> getProduct() {
    return getStateOf(request: () => _homeApiService.getProducts());
  }
}
