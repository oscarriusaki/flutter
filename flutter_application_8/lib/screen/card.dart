import 'package:flutter/material.dart';
import 'package:flutter_application_8/widget/custom_card_type1.dart';
import 'package:flutter_application_8/widget/custom_card_type2.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Card View'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardtype2Screen(
            name: 'Kakashi Sensei',
            imageURL:
                'https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/12/4-Kakashi-Hatake-Rampage.jpg',
          ),
          SizedBox(height: 20),
          CustomCardtype2Screen(
              imageURL:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcgwbGPjmKoPvRY7_aPiWcKq0HxArnlN4mBw&usqp=CAU'),
          SizedBox(height: 20),
          CustomCardtype2Screen(
              imageURL:
                  'https://staticc.sportskeeda.com/editor/2022/02/54429-16443361005537-1920.jpg'),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
