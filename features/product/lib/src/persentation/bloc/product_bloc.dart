import 'package:bases/bases.dart';
import '/src/domain/models/response/product_res.dart';
import '/src/domain/usecase/get_product_uc.dart';

class ProductBloc extends BaseBloc<ProductState, List<Product>> {
  final GetProductUc _useCase;
  ProductBloc(this._useCase) : super(ProductLoading(), []);

  void fetch() {
    if (isBusy) return;

    emit(ProductLoading());
    run(() async {
      final result = await _useCase.call();
      if (result is DataSuccess) {
        emit(ProductLoaded(result.data!.data!));
      } else {
        emit(ProductError());
      }
    });
  }
}

abstract class ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> res;
  ProductLoaded(this.res);
}

class ProductError extends ProductState {}
