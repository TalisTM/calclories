import 'package:flutter/material.dart';

class AppTheme {

  static const Color colorApp = Color(0xFF008262);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: colorApp,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      shadowColor: colorApp,
      elevation: 0,
      iconTheme: IconThemeData(color: colorApp),
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: colorApp,
        fontWeight: FontWeight.bold
      )
    )
  );
}