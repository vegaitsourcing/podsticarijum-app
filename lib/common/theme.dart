import 'package:flutter/material.dart';

class FamilyBackupTheme {
  static final ThemeData familyAppThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFECEFAB),
    backgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFE5E5E5)),
    scaffoldBackgroundColor: const Color(0xFFE5E5E5),
    fontFamily: 'Amatic SC',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.normal,
        color: Color(0xFF0A0909),
      ),
      headline3: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF06070D),
      ),
      headline4: TextStyle(fontSize: 30.0, color: Color(0xFF06070D)),
      headline6: TextStyle(fontSize: 20.0, color: Color(0xFF06070D)),
      bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
    ),
  );
}
