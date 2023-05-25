import 'package:flutter/material.dart';
import 'package:flutter_application_4/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.task_outlined,
              color: AppTheme.primary,
            ),
            title: Text(
              'Soy un title.',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Enim consectetur reprehenderit aliqua sint laborum quis commodo fugiat consequat dolor in aute Lorem.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
