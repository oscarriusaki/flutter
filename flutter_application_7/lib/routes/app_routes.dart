import 'package:flutter/material.dart';
import 'package:flutter_application_7/model/menu_option.dart';
import 'package:flutter_application_7/screen/screen.dart';

class AppRoute {
  static String initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      nombre: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_travel_sharp,
      nombre: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'list',
      icon: Icons.list,
      nombre: 'List',
      screen: const ListScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      nombre: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'container',
      icon: Icons.contacts_outlined,
      nombre: 'Container',
      screen: const ContainerScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.input,
      nombre: 'Input',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slow_motion_video_sharp,
      nombre: 'Slider',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listbuilder',
      icon: Icons.list_alt_rounded,
      nombre: 'List View Builder Screen',
      screen: const ListViewBuilderScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoute = {};
    appRoute.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoute.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoute;
  }

  static Map<String, Widget Function(BuildContext context)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "alert": (BuildContext context) => const AlertScreen(),
    "card": (BuildContext context) => const CardScreen(),
    "list": (BuildContext context) => const ListScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => HomeScreen(),
    );
  }
}
