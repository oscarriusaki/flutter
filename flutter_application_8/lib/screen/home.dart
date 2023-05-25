import 'package:flutter/material.dart';
import 'package:flutter_application_8/routes/app_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoute.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOption[index].icon),
          title: Text(menuOption[index].name),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          onTap: () {
            Navigator.pushNamed(context, menuOption[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOption.length,
      ),
    );
  }
}
