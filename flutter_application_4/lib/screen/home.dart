import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_route.dart';
import 'package:flutter_application_4/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoute.menuOptions;
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menuOption[index].icon,
            color: AppTheme.primary,
          ),
          title: Text(menuOption[index].name),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            Navigator.pushNamed(context, menuOption[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: menuOption.length,
      ),
    );
  }
}
