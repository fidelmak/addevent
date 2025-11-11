
import 'package:addevent/utils/theme_data.dart';
import 'package:flutter/material.dart';

abstract class ThemeState {
  ThemeData get themeData;
}

class LightMode extends ThemeState {
  @override
  final ThemeData themeData = lightMode; 
}

class DarkMode extends ThemeState {
  @override
  final ThemeData themeData = darkMode; 
}
