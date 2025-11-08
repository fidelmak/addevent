// this is a bloc part of it
import 'package:addevent/screens/cubits/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  /// Initializes the cubit with the light mode as the default state.
  ThemeCubit() : super(LightMode());

  /// Toggles between light and dark theme, emitting the corresponding state.
  void toggleTheme() {
    // Check the current state and emit the opposite state
    if (state is LightMode) {
      emit(DarkMode());
    } else {
      emit(LightMode());
    }
  }

  /// Returns the current ThemeData based on the state.
  ThemeData get currentTheme => state.themeData;
}
