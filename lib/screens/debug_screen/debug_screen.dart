import 'package:app_for_family_backup/screens/about_us_screen/AboutUsScreen.dart';
import 'package:app_for_family_backup/screens/ask_expert_screen/AskExpertScreen.dart';
import 'package:app_for_family_backup/screens/clothing_donation_screen/ClothingDonationScreen.dart';
import 'package:app_for_family_backup/screens/debug_screen/widgets/button.dart';
import 'package:app_for_family_backup/screens/experts_screen/ExpertsScreen.dart';
import 'package:app_for_family_backup/screens/introduction_screen/SplashScreen.dart';
import 'package:app_for_family_backup/screens/login_screen/LoginScreen.dart';
import 'package:app_for_family_backup/screens/register_screen/RegisterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Application for family backup title")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonDebugScreen("Login", () {
              Navigator.pushNamed(context, LoginScreen.route);
            }),
            ButtonDebugScreen("Register", () {
              Navigator.pushNamed(context, RegisterScreen.route);
            }),
            ButtonDebugScreen("Pitaj stručnjaka", () {
              Navigator.pushNamed(context, AskExpertScreen.route);
            }),
            ButtonDebugScreen("Donacija robe", () {
              Navigator.pushNamed(context, ClothingDonationScreen.route);
            }),
            ButtonDebugScreen("O nama", () {
              Navigator.pushNamed(context, AboutUsScreen.route);
            }),
            ButtonDebugScreen("Stručnjaci", () {
              Navigator.pushNamed(context, ExpertsScreen.route);
            }),
            ButtonDebugScreen("Introduction", () {
              Navigator.pushNamed(context, SplashScreen.route);
            }),
          ],
        )));
  }
}
