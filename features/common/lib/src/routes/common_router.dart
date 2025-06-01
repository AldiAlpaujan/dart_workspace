import 'package:auto_route/auto_route.dart';
import 'package:common/src/routes/common_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,')
class CommonRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, path: '/', page: SplashScreen.page),
    AutoRoute(path: '/home', page: Home.page),
  ];
}
