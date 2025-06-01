//@GeneratedMicroModule;ProductPackageModule;package:product/src/di/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:product/src/data/repositories/product_repository_impl.dart'
    as _i236;
import 'package:product/src/domain/repositories/product_repository.dart'
    as _i456;
import 'package:product/src/domain/usecase/get_product_uc.dart' as _i652;

class ProductPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i456.ProductRepository>(
        () => _i236.ProductRepositoryImpl()..init());
    gh.lazySingleton<_i652.GetProductUc>(
        () => _i652.GetProductUc(gh<_i456.ProductRepository>()));
  }
}
