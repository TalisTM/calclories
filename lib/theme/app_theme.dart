import 'package:flutter/material.dart';

class AppTheme {

  static const Color colorApp = Color(0xFF008262);
  static const Color ligthGrey = Color(0xFF393E46);
  static const Color darkGrey = Color(0xFF222831);
  static const Color white = Color(0xFFEEEEEE);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: colorApp,
    backgroundColor: Colors.white,
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
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorApp,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        fontSize: 24,
        color: Colors.black87
      ),
      bodyText1: TextStyle(
        color: Colors.grey[700],
        fontSize: 18
      ),
      bodyText2: TextStyle(
        color: Colors.grey[500],
        fontSize: 18
      ),
      subtitle1: TextStyle(
        color: Colors.black87,
      ),
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: colorApp,
    backgroundColor: ligthGrey,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(white)
    ),
    dialogBackgroundColor: ligthGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: darkGrey,
      shadowColor: colorApp,
      elevation: 0,
      iconTheme: IconThemeData(color: colorApp),
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: colorApp,
        fontWeight: FontWeight.bold
      )
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorApp,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        fontSize: 24,
        color: white
      ),
      bodyText1: TextStyle(
        color: white,
        fontSize: 18
      ),
      bodyText2: TextStyle(
        color: Colors.grey[400],
        fontSize: 18
      ),
      subtitle1: TextStyle(
        color: white,
      ),
    )
  );
}