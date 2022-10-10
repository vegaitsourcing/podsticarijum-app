import 'package:app_for_family_backup/screens/about_us_screen/about_us_screen.dart';
import 'package:app_for_family_backup/screens/ask_expert_screen/ask_expert_screen.dart';
import 'package:app_for_family_backup/screens/clothing_donation_screen/clothing_donation_screen.dart';
import 'package:app_for_family_backup/common/widgets/outline_button_custom.dart';
import 'package:app_for_family_backup/screens/experts_screen/experts_screen.dart';
import 'package:app_for_family_backup/screens/introduction_screen/splash_screen.dart';
import 'package:app_for_family_backup/screens/login_screen/login_screen.dart';
import 'package:app_for_family_backup/screens/register_screen/register_screen.dart';
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
            OutlineButtonCustom("Login", () {
              Navigator.pushNamed(context, LoginScreen.route);
            }),
            OutlineButtonCustom("Register", () {
              Navigator.pushNamed(context, RegisterScreen.route);
            }),
            OutlineButtonCustom("Pitaj stručnjaka", () {
              Navigator.pushNamed(context, AskExpertScreen.route);
            }),
            OutlineButtonCustom("Donacija robe", () {
              Navigator.pushNamed(context, ClothingDonationScreen.route);
            }),
            OutlineButtonCustom("O nama", () {
              Navigator.pushNamed(context, AboutUsScreen.route);
            }),
            OutlineButtonCustom("Stručnjaci", () {
              Navigator.pushNamed(context, ExpertsScreen.route);
            }),
            OutlineButtonCustom("Introduction", () {
              Navigator.pushNamed(context, SplashScreen.route);
            }),
          ],
        )));
  }
}
