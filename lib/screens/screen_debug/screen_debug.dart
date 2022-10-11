import 'package:app_for_family_backup/screens/screen_about_us/screen_about_us.dart';
import 'package:app_for_family_backup/screens/screen_ask_expert/screen_ask_expert_category.dart';
import 'package:app_for_family_backup/screens/screen_clothing_donation/screen_clothing_donation.dart';
import 'package:app_for_family_backup/common/widgets/custom_outline_button.dart';
import 'package:app_for_family_backup/screens/screen_experts/experts_screen.dart';
import 'package:app_for_family_backup/screens/screen_introduction/screen_splash.dart';
import 'package:app_for_family_backup/screens/screen_login/screen_login.dart';
import 'package:app_for_family_backup/screens/screen_register/screen_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenDebug extends StatelessWidget {
  const ScreenDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Application for family backup title")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomOutlineButton("Login", () {
              Navigator.pushNamed(context, ScreenLogin.route);
            }),
            CustomOutlineButton("Register", () {
              Navigator.pushNamed(context, ScreenRegister.route);
            }),
            CustomOutlineButton("Pitaj stručnjaka", () {
              Navigator.pushNamed(context, ScreenAskExpertCategory.route);
            }),
            CustomOutlineButton("Donacija robe", () {
              Navigator.pushNamed(context, ScreenClothingDonation.route);
            }),
            CustomOutlineButton("O nama", () {
              Navigator.pushNamed(context, ScreenAboutUs.route);
            }),
            CustomOutlineButton("Stručnjaci", () {
              Navigator.pushNamed(context, ScreenExperts.route);
            }),
            CustomOutlineButton("Introduction", () {
              Navigator.pushNamed(context, ScreenSplash.route);
            }),
          ],
        )));
  }
}
