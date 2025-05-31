import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:session/session.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSession();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}
