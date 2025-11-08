import 'package:flutter/material.dart';

// Brand color from logo
const Color brandOrange = Colors.blueGrey;

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade100,
    primary: brandOrange,
    secondary: Color(0xFFFFE5D6), // Light orange tint
    tertiary: Color(0xFFFFF4F0), // Very light orange tint
    inversePrimary: Color(0xFF2D1810), // Dark brown complement
    onPrimary: Colors.white,
    onSecondary: brandOrange, // Darker orange for contrast
    onSurface: Colors.grey.shade800,
  ),

  scaffoldBackgroundColor: Color(0xffffffff),

  /* 
  Orange-themed button style 
  */
  elevatedButtonTheme: ElevatedButtonThemeData(
    style:
        ElevatedButton.styleFrom(
          // White text on orange background
          foregroundColor: Colors.white,
          // Brand orange background
          backgroundColor: brandOrange,
          // Shape with rounded corners
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          // Elevation
          elevation: 3.0,
          // Padding
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          // Text style
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // Minimum size
          minimumSize: const Size(double.infinity, 45),
          // Shadow and surface styling
          shadowColor: brandOrange.withValues(alpha: 0.3),
          surfaceTintColor: Colors.transparent,
        ).copyWith(
          // Hover and pressed states
          overlayColor: MaterialStateProperty.resolveWith<Color?>((
            Set<MaterialState> states,
          ) {
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

  /* 
  Custom SnackBar Theme
  */
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

  /* 
  Orange-themed textfield style 
  */
  inputDecorationTheme: InputDecorationTheme(
    isDense: false,

    // Content padding
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),

    // Border styling - Use .r consistently for radius
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // Fixed: was
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

    // Fill styling
    filled: true,
    fillColor: const Color(0xFFFFFfff), // Fixed: lowercase 'f'
    // Hint text styling
    hintStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade500,
    ),

    // Label styling
    labelStyle: TextStyle(
      fontSize: 16, // Changed from 16.0 to 16
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade700,
    ),

    floatingLabelStyle: TextStyle(
      // Removed const
      fontSize: 16, // Changed from 16.0 to 16
      fontWeight: FontWeight.w500,
      color: brandOrange,
    ),
  ),
  /*
  Text styling with orange accents
  */
  textTheme: TextTheme(
    // Display styles (largest text)
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
      letterSpacing: 0.0,
      color: Colors.grey.shade900,
      fontFamily: 'PlusJakartaSans',
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.grey.shade900,
      fontFamily: 'PlusJakartaSans',
    ),

    // Headlines - using brand orange for emphasis
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.0,
      color: brandOrange,
      fontFamily: 'PlusJakartaSans',
    ),
    headlineMedium: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      color: brandOrange,
      fontFamily: 'PlusJakartaSans',
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      color: Colors.grey.shade800,
      fontFamily: 'PlusJakartaSans',
    ),

    // Titles
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
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
      letterSpacing: 0.1,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),

    // Body text
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
      letterSpacing: 0.4,
      color: Colors.grey.shade600,
      height: 1.33,
      fontFamily: 'PlusJakartaSans',
    ),

    // Labels
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.grey.shade700,
      fontFamily: 'PlusJakartaSans',
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.grey.shade600,
      fontFamily: 'PlusJakartaSans',
    ),
  ),

  // App bar theme
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

  // Icon theme
  iconTheme: IconThemeData(color: brandOrange, size: 24.0),

  // Primary icon theme
  primaryIconTheme: const IconThemeData(color: Colors.white, size: 24.0),
);

/* 
................................................................................
                              DARK MODE THEME 
................................................................................
*/

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: brandOrange,
    secondary: const Color.fromARGB(255, 10, 58, 82), // Dark orange tint
    tertiary: const Color.fromARGB(255, 67, 142, 180), // Darker orange tint
    inversePrimary: const Color.fromARGB(
      255,
      97,
      110,
      117,
    ), // Light orange complement
    onPrimary: Colors.white,
    onSecondary: const Color.fromARGB(
      255,
      191,
      209,
      218,
    ), // Light orange for contrast
    onSurface: Colors.grey.shade200,
  ),

  scaffoldBackgroundColor: Color(0xFF121212),

  /* 
  button style for dark theme
  */
  elevatedButtonTheme: ElevatedButtonThemeData(
    style:
        ElevatedButton.styleFrom(
          // White text on orange background
          foregroundColor: Colors.white,
          // Brand orange background (slightly adjusted for dark theme)
          backgroundColor: brandOrange,
          // Shape with rounded corners
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          // Elevation
          elevation: 4.0,
          // Padding
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          // Text style
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // Minimum size
          minimumSize: const Size(double.infinity, 50),
          // Shadow and surface styling
          shadowColor: brandOrange.withOpacity(0.4),
          surfaceTintColor: Colors.transparent,
        ).copyWith(
          // Hover and pressed states
          overlayColor: MaterialStateProperty.resolveWith<Color?>((
            Set<MaterialState> states,
          ) {
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

  /* 
  Orange-themed textfield style for dark theme
  */
  inputDecorationTheme: InputDecorationTheme(
    // Content padding
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),

    // Border styling
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
      borderSide: const BorderSide(color: brandOrange, width: 2.0),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Colors.redAccent),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
    ),

    // Fill styling for dark theme
    filled: true,
    fillColor: Colors.grey.shade800.withOpacity(0.7),

    // Hint text styling
    hintStyle: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade400,
    ),

    // Label styling
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

  /* 
  Text styling for dark theme with bluegrey accents
  */
  textTheme: TextTheme(
    // Display styles
    displayLarge: TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      color: Colors.grey.shade100,
    ),
    displayMedium: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.grey.shade100,
    ),
    displaySmall: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.grey.shade100,
    ),

    // Headlines - using brand orange for emphasis
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.0,
      color: brandOrange,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      color: brandOrange,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.0,
      color: Colors.grey.shade200,
    ),

    // Titles
    titleLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.0,
      color: Colors.grey.shade200,
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.grey.shade200,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.grey.shade300,
    ),

    // Body text
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.grey.shade300,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.grey.shade300,
      height: 1.4,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.grey.shade400,
      height: 1.33,
    ),

    // Labels
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.grey.shade300,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.grey.shade300,
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.grey.shade400,
    ),
  ),

  // App bar theme for dark mode
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

  // Icon theme for dark mode
  iconTheme: IconThemeData(color: brandOrange, size: 24.0),

  // Primary icon theme for dark mode
  primaryIconTheme: const IconThemeData(color: Colors.white, size: 24.0),
);
