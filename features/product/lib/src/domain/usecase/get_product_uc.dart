import 'package:bases/bases.dart';
import '/src/domain/models/response/product_res.dart';
import '../repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProductUc extends UseCase<DataState<ProductRes>, void> {
  final ProductRepository _productRepository;

  GetProductUc(this._productRepository);

  @override
  Future<DataState<ProductRes>> call({void request}) {
    return _productRepository.getProduct();
  }
}
