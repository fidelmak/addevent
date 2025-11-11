
import 'package:flutter/material.dart';

const Color brandOrange = Colors.blueGrey;

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade100,
    primary: brandOrange,
    secondary: Color(0xFFFFE5D6),
    tertiary: Color(0xFFFFF4F0),
    inversePrimary: Color(0xFF2D1810),
    onPrimary: Colors.white,
    onSecondary: brandOrange,
    onSurface: Colors.grey.shade800,
  ),
  scaffoldBackgroundColor: Color(0xffffffff),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: brandOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 3.0,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      minimumSize: const Size(double.infinity, 45),
      shadowColor: brandOrange.withValues(alpha: 0.3),
      surfaceTintColor: Colors.transparent,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.white.withOpacity(0.1);
        }
        if (states.contains(MaterialState.pressed)) {
          return Colors.white.withOpacity(0.2);
        }
        return null;
      }),
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: brandOrange,
    contentTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'PlusJakartaSans',
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    behavior: SnackBarBehavior.floating,
    elevation: 4.0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: false,
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: brandOrange, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red, width: 2.0),
    ),
    filled: true,
    fillColor: const Color(0xFFFFFFFF),
    hintStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade500,
    ),
    labelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade700,
    ),
    floatingLabelStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: brandOrange,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      color: Colors.grey.shade900,
      fontFamily: 'PlusJakartaSans',
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade900,
      fontFamily: 'PlusJakartaSans',
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade900,
      fontFamily: 'PlusJakartaSans',
    ),
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: brandOrange,
      fontFamily: 'PlusJakartaSans',
    ),
    headlineMedium: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: brandOrange,
      fontFamily: 'PlusJakartaSans',
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade800,
      fontFamily: 'PlusJakartaSans',
    ),
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade800,
      fontFamily: 'PlusJakartaSans',
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.grey.shade800,
      fontFamily: 'PlusJakartaSans',
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.grey.shade800,
      height: 1.5,
      fontFamily: 'PlusJakartaSans',
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.grey.shade800,
      height: 1.4,
      fontFamily: 'PlusJakartaSans',
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade600,
      height: 1.33,
      fontFamily: 'PlusJakartaSans',
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade600,
      fontFamily: 'PlusJakartaSans',
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: brandOrange,
    foregroundColor: Colors.white,
    elevation: 2.0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
  iconTheme: IconThemeData(color: brandOrange, size: 24.0),
  primaryIconTheme: const IconThemeData(color: Colors.white, size: 24.0),
);

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: brandOrange,
    secondary: Color.fromARGB(255, 10, 58, 82),
    tertiary: Color.fromARGB(255, 67, 142, 180),
    inversePrimary: Color.fromARGB(255, 97, 110, 117),
    onPrimary: Colors.white,
    onSecondary: Color.fromARGB(255, 191, 209, 218),
    onSurface: Colors.grey.shade200,
  ),
  scaffoldBackgroundColor: Color(0xFF121212),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: brandOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 4.0,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      minimumSize: const Size(double.infinity, 50),
      shadowColor: brandOrange.withOpacity(0.4),
      surfaceTintColor: Colors.transparent,
    ).copyWith(
      overlayColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.white.withOpacity(0.1);
        }
        if (states.contains(MaterialState.pressed)) {
          return Colors.white.withOpacity(0.2);
        }
        return null;
      }),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: brandOrange, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.redAccent),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
    ),
    filled: true,
    fillColor: Colors.grey.shade800.withOpacity(0.7),
    hintStyle: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade400,
    ),
    labelStyle: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade300,
    ),
    floatingLabelStyle: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: brandOrange,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade100,
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade100,
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade100,
    ),
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: brandOrange,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: brandOrange,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey.shade200,
    ),
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade200,
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade200,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade300,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade300,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade300,
      height: 1.4,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade400,
      height: 1.33,
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade300,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade300,
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade400,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
    foregroundColor: brandOrange,
    elevation: 2.0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: brandOrange,
    ),
  ),
  iconTheme: IconThemeData(color: brandOrange, size: 24.0),
  primaryIconTheme: const IconThemeData(color: Colors.white, size: 24.0),
);

