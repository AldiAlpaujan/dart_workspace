import 'package:auto_route/auto_route.dart';
import 'product_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,')
class ProductRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/product', page: Product.page),
    AutoRoute(path: '/product-detail', page: ProductDetail.page),
  ];
}
