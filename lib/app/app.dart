import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/presentation/resources/routes_manager.dart';
import 'package:flutter_advanced_project/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();   // singelton

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
