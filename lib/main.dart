import 'package:app_for_family_backup/screens/about_us_screen/AboutUsScreen.dart';
import 'package:app_for_family_backup/screens/ask_expert_screen/AskExpertScreen.dart';
import 'package:app_for_family_backup/screens/clothing_donation_screen/ClothingDonationScreen.dart';
import 'package:app_for_family_backup/screens/debug_screen/debug_screen.dart';
import 'package:app_for_family_backup/screens/experts_screen/ExpertsScreen.dart';
import 'package:app_for_family_backup/screens/introduction_screen/SplashScreen.dart';
import 'package:app_for_family_backup/screens/login_screen/LoginScreen.dart';
import 'package:app_for_family_backup/screens/register_screen/RegisterScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      title: "Application for family backup title",
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        RegisterScreen.route: (context) => RegisterScreen(),
        AboutUsScreen.route: (context) => AboutUsScreen(),
        AskExpertScreen.route: (context) => AskExpertScreen(),
        ExpertsScreen.route: (context) => ExpertsScreen(),
        ClothingDonationScreen.route: (context) => ClothingDonationScreen(),
        SplashScreen.route: (context) => SplashScreen(),
      },
    ));
