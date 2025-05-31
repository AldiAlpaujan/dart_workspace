import 'package:bases/bases.dart';
import 'package:home/src/domain/models/response/product_res.dart';

abstract class HomeRepository {
  Future<DataState<ProductRes>> getProduct();
}
