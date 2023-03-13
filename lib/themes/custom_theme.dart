// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.white,
    //const Color.fromARGB(255, 242, 242, 242)
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Color.fromARGB(255,189,189,189),
        fontWeight: FontWeight.w200,
        fontSize: 12,
        fontFamily: 'Inter',
      ),
      headline2: TextStyle(
        color: Color.fromARGB(255,70,74,78),
        fontSize: 22,
        fontWeight: FontWeight.w800,
        fontFamily: 'Inter',
      ),
      headline3: TextStyle(
        color: Color.fromARGB(255,70,74,78),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Inter',
      ),
      bodyText1: TextStyle(
        color: Color.fromARGB(255,68,72,76),
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      ),
      bodyText2: TextStyle(
        color: Color.fromARGB(255,70,74,78),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      ),
      caption: TextStyle(
        color: Color.fromARGB(255,179,179,179),
        fontSize: 12,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
