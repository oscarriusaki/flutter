import 'package:flutter/material.dart';
import 'package:flutter_application_10/router/app_routes.dart';
import 'package:flutter_application_10/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: AppRouter.appRoutes,
      theme: AppTheme.lightTheme,
    );
  }
}
