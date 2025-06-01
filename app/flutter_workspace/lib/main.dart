import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:session/session.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSession();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      // localizationsDelegates: AppThemes.localizationsDelegates,
      // supportedLocales: AppThemes.supportedLocales,
      // theme: AppThemes.light,
      // darkTheme: AppThemes.dark,
      // themeMode: themeSt.themeMode,
    );
  }
}
