import 'package:flutter/material.dart';
import 'package:flutter_application_9/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cines'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiperScreen(),
              MovieSliderScreen(),
              MovieSliderScreen(),
              MovieSliderScreen(),
              MovieSliderScreen(),
            ],
          ),
        ));
  }
}
