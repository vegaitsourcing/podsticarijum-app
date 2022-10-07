import 'package:app_for_family_backup/screens/about_us_screen/AboutUsScreen.dart';
import 'package:app_for_family_backup/screens/ask_expert_screen/AskExpertScreen.dart';
import 'package:app_for_family_backup/screens/clothing_donation_screen/ClothingDonationScreen.dart';
import 'package:app_for_family_backup/screens/debug_screen/debug_screen.dart';
import 'package:app_for_family_backup/screens/experts_screen/ExpertsScreen.dart';
import 'package:app_for_family_backup/screens/login_screen/LoginScreen.dart';
import 'package:app_for_family_backup/screens/register_screen/RegisterScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Application for family backup title",
      initialRoute: '/',
      routes: {
        '/': (context) => DebugScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/about_us': (context) => AboutUsScreen(),
        '/ask_expert': (context) => AskExpertScreen(),
        '/experts': (context) => ExpertsScreen(),
        '/clothing_donation': (context) => ClothingDonationScreen(),
      },
    ));
