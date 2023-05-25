import 'package:flutter/material.dart';
import 'package:flutter_application_4/model/menu_options.dart';
import 'package:flutter_application_4/screen/avatar_screen.dart';
import 'package:flutter_application_4/screen/inputs_screen.dart';
import 'package:flutter_application_4/screen/screen.dart';

class AppRoute {
  static const initialRoute = 'home';
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
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'list',
      icon: Icons.list,
      name: 'List',
      screen: const ListViewScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.group_outlined,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.animation,
      name: 'Animated Container',
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
      icon: Icons.snippet_folder_outlined,
      name: 'Slider and Checks',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listBuilder',
      icon: Icons.format_list_numbered,
      name: 'ListBuilder',
      screen: const ListBuilderScreen(),
    )
  ];
  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext context)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'list': (BuildContext context) => const ListViewScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
