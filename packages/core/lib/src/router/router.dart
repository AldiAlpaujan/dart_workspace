import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:product/product.dart';

final commonRouter = CommonRouter();
final productRouter = ProductRouter();

@AutoRouterConfig(replaceInRouteName: 'Page,')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    ...commonRouter.routes,
    ...productRouter.routes,
  ];
}
