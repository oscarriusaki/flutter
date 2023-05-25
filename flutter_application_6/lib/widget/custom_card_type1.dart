import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text('This is a title'),
            subtitle: Text(
                'Reprehenderit culpa ea laborum officia esse quis excepteur consectetur.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
