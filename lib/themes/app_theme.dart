import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 255, 255, 255);
  static const Color secondaryColor = Color.fromARGB(255, 0, 0, 0);
  // Define your other colors here...

  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    // Assign other colors from your palette to the corresponding properties
  );

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
    // Assign other colors from your palette to the corresponding properties
  );

  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: lightColorScheme,
  );

  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: darkColorScheme,
  );
}
