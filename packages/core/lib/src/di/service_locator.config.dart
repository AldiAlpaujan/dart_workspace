// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/src/di/core_module.dart' as _i748;
import 'package:core/src/router/router.dart' as _i411;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:product/product.dart' as _i86;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModules = _$CoreModules();
    gh.singleton<_i411.AppRouter>(() => coreModules.appRouter);
    gh.singleton<_i361.Dio>(() => coreModules.dio);
    await _i86.ProductPackageModule().init(gh);
    return this;
  }
}

class _$CoreModules extends _i748.CoreModules {}
