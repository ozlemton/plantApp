import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF28AF6E),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF28AF6E),
      secondary: const Color(0xFF13231B),
      background: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black87,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: Color(0xFF13231B),
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Color(0xFF13231B),
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF28AF6E),
    scaffoldBackgroundColor: const Color(0xFF101e17),
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFF28AF6E),
      secondary: const Color(0xFFB2DFDB),
      background: const Color(0xFF101e17),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
