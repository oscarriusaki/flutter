import 'package:flutter/material.dart';
import 'package:flutter_application_7/widget/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            text: 'Kakashi',
            imageURL:
                'https://static.wikia.nocookie.net/naruto/images/2/27/Kakashi_Hatake.png/revision/latest/scale-to-width-down/1200?cb=20170628120149',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageURL:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsrVW8vuif7mLiw0loK6ycHfPZmisRqtiT7A&usqp=CAU',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageURL:
                'https://i.pinimg.com/originals/51/f1/c6/51f1c61aa0c79267d85f97c7fd48378c.jpg',
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
