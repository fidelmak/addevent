
import 'package:addevent/screens/cubits/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  /// Initializes the cubit 
  ThemeCubit() : super(LightMode());

  /// Toggles between light and dark theme, 
  void toggleTheme() {
   
    if (state is LightMode) {
      emit(DarkMode());
    } else {
      emit(LightMode());
    }
  }


  ThemeData get currentTheme => state.themeData;
}
