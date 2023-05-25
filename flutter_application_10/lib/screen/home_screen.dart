import 'package:flutter/material.dart';
import 'package:flutter_application_10/widget/card_swiper.dart';
import 'package:flutter_application_10/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en cine'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            // slder de peliculas
            const MovieSlider(),
            const MovieSlider(),
            const MovieSlider(),
            const MovieSlider(),
          ],
        ),
      ),
    );
  }
}
