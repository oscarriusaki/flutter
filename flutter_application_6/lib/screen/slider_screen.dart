import 'package:flutter/material.dart';
import 'package:flutter_application_6/theme/app_theme.dart';

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
      appBar: AppBar(
        title: const Text('Slider and checks'),
      ),
      body: Column(
        children: [
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
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            },
          ),
          Switch(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Habilitar'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: ((value) => setState(() {
                  _sliderEnabled = value;
                })),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/220/752/HD-wallpaper-kakashi-hatake-anime-black-charecter-dark-hatake-kakashi-naruto-shippuden-vector.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
