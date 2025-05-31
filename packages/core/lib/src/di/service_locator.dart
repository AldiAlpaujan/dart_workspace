import 'package:get_it/get_it.dart';
import 'package:home/home.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

final di = GetIt.instance;

@InjectableInit(
  externalPackageModulesAfter: [ExternalModule(HomePackageModule)],
)
Future<void> configureDependencies() async => di.init();
