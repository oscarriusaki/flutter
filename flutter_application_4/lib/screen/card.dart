import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/widgets.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Kakashi sensei',
            imageURL:
                'https://wallpapers.com/images/hd/kakashi-hatake-with-yellow-kitten-1yb4kwwlieav9kjh.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageURL: 'https://wallpaperaccess.com/full/484955.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
              imageURL:
                  'https://c4.wallpaperflare.com/wallpaper/114/751/814/naruto-kakashi-hatake-hd-wallpaper-preview.jpg'),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
