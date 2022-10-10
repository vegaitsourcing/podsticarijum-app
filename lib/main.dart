import 'package:app_for_family_backup/screens/about_us_screen/about_us_screen.dart';
import 'package:app_for_family_backup/screens/ask_expert_screen/ask_expert_screen.dart';
import 'package:app_for_family_backup/screens/clothing_donation_screen/clothing_donation_screen.dart';
import 'package:app_for_family_backup/screens/experts_screen/experts_screen.dart';
import 'package:app_for_family_backup/screens/introduction_screen/splash_screen.dart';
import 'package:app_for_family_backup/screens/introduction_screen/start_screen.dart';
import 'package:app_for_family_backup/screens/login_screen/login_screen.dart';
import 'package:app_for_family_backup/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Amatic SC',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ),
      title: "App for family backup",
      initialRoute: '/', // TODO: Change back to start screen
      routes: {
        '/': (context) => AskExpertScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        RegisterScreen.route: (context) => RegisterScreen(),
        AboutUsScreen.route: (context) => AboutUsScreen(),
        AskExpertScreen.route: (context) => AskExpertScreen(),
        ExpertsScreen.route: (context) => ExpertsScreen(),
        ClothingDonationScreen.route: (context) => ClothingDonationScreen(),
        SplashScreen.route: (context) => SplashScreen(),
        StartScreen.route: (context) => StartScreen(),
        AskExpertScreen.route: (context) => AskExpertScreen()
      },
    ));
