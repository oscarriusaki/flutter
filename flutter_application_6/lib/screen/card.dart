import 'package:flutter/material.dart';
import 'package:flutter_application_6/widget/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2Screen(
            name: 'Kakashi Harake',
            imageURL:
                'https://sportshub.cbsistatic.com/i/2021/08/09/b6fa15e8-0a86-4c77-b602-bb22b59c4bac/naruto-kakashi-cosplay-1274250.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2Screen(
            imageURL:
                'https://www.looper.com/img/gallery/why-kakashi-was-a-terrible-role-model-in-naruto/l-intro-1647530546.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2Screen(
            imageURL:
                'https://imgix.ranker.com/list_img_v2/10768/2770768/original/anime-characters-like-kakashi-hatake',
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
