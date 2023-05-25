import 'dart:math';

import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.indigo;
  BorderRadius _borderRadius = BorderRadius.circular(20);

  void chance() {
    final random = Random();
    _width = random.nextInt(200).toDouble() + 50;
    _height = random.nextInt(200).toDouble() + 50;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    _borderRadius = BorderRadius.circular(random.nextInt(300) + 20);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 400),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.play_circle_outline_outlined,
          size: 35,
        ),
        onPressed: chance,
      ),
    );
  }
}
