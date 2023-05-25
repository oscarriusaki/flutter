import 'package:flutter/material.dart';
import 'package:flutter_application_4/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Slider and checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 400,
          activeColor: AppTheme.primary,
          value: _sliderValue,
          onChanged: _sliderEnabled
              ? (value) {
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
        ),
        Checkbox(
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value ?? true;
            setState(() {});
          },
        ),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled,
          onChanged: (value) => setState(() {
            _sliderEnabled = value ?? true;
          }),
        ),
        Switch(
          value: _sliderEnabled,
          onChanged: (value) => setState(() {
            _sliderEnabled = value;
          }),
        ),
        SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
          title: const Text('Ebled check'),
          value: _sliderEnabled,
          onChanged: (value) => setState(() {
            _sliderEnabled = value;
          }),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://img2.wikia.nocookie.net/__cb20140624011520/naruto/pt-br/images/e/eb/Kakashi_Hatake_(Renderiza%C3%A7%C3%A3o).png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
