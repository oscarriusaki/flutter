import 'package:flutter/material.dart';
import 'package:flutter_application_8/model/menu_option.dart';
import 'package:flutter_application_8/screen/screen.dart';

class AppRoute {
  static String initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alert screen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_travel_sharp,
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'list',
      icon: Icons.list_alt_rounded,
      name: 'List',
      screen: const ListScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'container',
      icon: Icons.confirmation_number_outlined,
      name: 'Container',
      screen: const ContainerScreen(),
    ),
    MenuOption(
      route: 'form',
      icon: Icons.input,
      name: 'Form Field',
      screen: const FormFieldScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.snippet_folder_rounded,
      name: 'Slider Screen',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.list,
      name: 'List View Buider',
      screen: const ListBuilderScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext context)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'list': (BuildContext context) => const ListScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
