// Example implementation in theme_state.dart (if not already defined)
import 'package:addevent/utils/theme_data.dart';
import 'package:flutter/material.dart';

abstract class ThemeState {
  ThemeData get themeData;
}

class LightMode extends ThemeState {
  @override
  final ThemeData themeData = lightMode; // Or your custom light theme from theme2.dart
}

class DarkMode extends ThemeState {
  @override
  final ThemeData themeData = darkMode; // Or your custom dark theme from theme2.dart
}
