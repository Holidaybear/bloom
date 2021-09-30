import 'package:flutter/material.dart';

class BloomThemeData {

  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.primary,
    );
  }

  static ThemeData lightThemeData = themeData(lightColorScheme);
  static ThemeData darkThemeData = themeData(darkColorScheme);

  static ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFFFF1F1),
    primaryVariant: Colors.transparent,
    secondary: Color(0xFF3F2C2C),
    secondaryVariant: Colors.transparent,
    background: Colors.white,
    surface: Colors.white.withOpacity(0.85),
    onBackground: Color(0xFF232323),
    error: Colors.black,
    onError: Colors.black,
    onPrimary: Color(0xFF232323),
    onSecondary: Colors.white,
    onSurface: Color(0xFF232323),
    brightness: Brightness.light
  );

  static ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF2D3B2D),
    primaryVariant: Colors.transparent,
    secondary: Color(0xFFB8C9B8),
    secondaryVariant: Colors.transparent,
    background: Color(0xFF232323),
    surface: Colors.white.withOpacity(0.15),
    onBackground: Colors.white,
    error: Colors.white,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Color(0xFF232323),
    onSurface: Colors.white.withOpacity(0.85),
    brightness: Brightness.dark
  );
}
