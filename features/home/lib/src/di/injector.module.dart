//@GeneratedMicroModule;HomePackageModule;package:home/src/di/injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:home/src/data/repositories/home_repository_impl.dart' as _i1009;
import 'package:home/src/domain/repositories/home_repository.dart' as _i121;
import 'package:home/src/domain/usecase/get_product_uc.dart' as _i778;
import 'package:injectable/injectable.dart' as _i526;

class HomePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i121.HomeRepository>(
        () => _i1009.HomeRepositoryImpl()..init());
    gh.lazySingleton<_i778.GetProductUc>(
        () => _i778.GetProductUc(gh<_i121.HomeRepository>()));
  }
}
