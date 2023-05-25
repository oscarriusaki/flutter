import 'package:flutter/cupertino.dart';
import '../screen/screen.dart';

class AppRouter {
  static String initialRoute = 'home';
  static Map<String, Widget Function(BuildContext context)> appRoutes = {
    'home': (BuildContext context) => const HomeScreen(),
    'details': (BuildContext context) => const Detail(),
  };
}
