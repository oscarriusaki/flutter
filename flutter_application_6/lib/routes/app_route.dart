import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/menu_option.dart';
import 'package:flutter_application_6/screen/alert.dart';
import 'package:flutter_application_6/screen/card.dart';
import 'package:flutter_application_6/screen/home.dart';
import 'package:flutter_application_6/screen/list.dart';
import 'package:flutter_application_6/screen/screen.dart';

class AppRoute {
  static const String initialState = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'list',
      icon: Icons.list,
      name: 'List Screen',
      screen: const ListScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervisor_account,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'Animated',
      icon: Icons.animation,
      name: 'Animated',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.input,
      name: 'Input Screen',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'Slider',
      icon: Icons.screen_lock_landscape,
      name: 'Slider Screen',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'builder',
      icon: Icons.build_outlined,
      name: 'List view Builder',
      screen: const ListBuilderScreen(),
    )
  ];
  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> routes = {};

    routes.addAll({'home': (BuildContext context) => HomeScreen()});
    for (var option in menuOptions) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return routes;
  }

  // static final Map<String, Widget Function(BuildContext context)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'list': (BuildContext context) => const ListScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
