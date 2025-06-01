import 'package:bases/bases.dart';
import '/src/domain/models/response/product_res.dart';

abstract class ProductRepository {
  Future<DataState<ProductRes>> getProduct();
}
