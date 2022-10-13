import 'package:flutter/material.dart';

class FamilyBackupTheme {
  static final ThemeData familyAppThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFECEFAB),
    fontFamily: 'Amatic SC',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF06070D),
      ),
      headline3: TextStyle(fontSize: 30.0, color: Color(0xFF06070D)),
      bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
    ),
  );
}
