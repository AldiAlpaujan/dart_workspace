import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product/product.dart';

import 'service_locator.config.dart';

final di = GetIt.instance;

@InjectableInit(
  externalPackageModulesAfter: [ExternalModule(ProductPackageModule)],
)
Future<void> configureDependencies() async => di.init();
