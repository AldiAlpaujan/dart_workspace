import 'package:bases/bases.dart';
import 'package:home/src/domain/models/response/product_res.dart';
import 'package:home/src/domain/repositories/home_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProductUc extends UseCase<DataState<ProductRes>, void> {
  final HomeRepository _homeRepository;

  GetProductUc(this._homeRepository);

  @override
  Future<DataState<ProductRes>> call({void request}) {
    return _homeRepository.getProduct();
  }
}
