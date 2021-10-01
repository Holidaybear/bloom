import 'package:flutter/material.dart';

class BloomThemeData {
  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: colorScheme.primary,
      fontFamily: 'Nunito Sans',
      textTheme: _textTheme,
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
    brightness: Brightness.light,
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
    brightness: Brightness.dark,
  );

  static const _light = FontWeight.w300;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static const TextTheme _textTheme = TextTheme(
    headline1: TextStyle(fontSize: 18.0, fontWeight: _bold, letterSpacing: 0),
    headline2: TextStyle(fontSize: 14.0, fontWeight: _bold, letterSpacing: 0.15),
    subtitle1: TextStyle(fontSize: 16.0, fontWeight: _light, letterSpacing: 0),
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: _light, letterSpacing: 0),
    bodyText2: TextStyle(fontSize: 12.0, fontWeight: _light, letterSpacing: 0),
    button: TextStyle(fontSize: 14.0, fontWeight: _semiBold, letterSpacing: 1.0),
    caption: TextStyle(fontSize: 11.0, fontWeight: _semiBold, letterSpacing: 0),
  );
}
