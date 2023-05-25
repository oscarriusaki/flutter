import 'package:flutter/material.dart';
import 'package:flutter_application_8/routes/app_route.dart';
import 'package:flutter_application_8/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.getRoutes(),
      theme: AppTheme.lighTheme,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
