import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.indigo;
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(backgroundColor: primary, elevation: 0),
  );
}
