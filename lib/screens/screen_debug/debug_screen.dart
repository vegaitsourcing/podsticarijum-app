import '../about_us_screen/screen_about_us.dart';
import '../ask_expert_screen/ask_expert_form_screen.dart';
import '../ask_expert_screen/ask_expert_category_screen.dart';
import '../donation_screen/dontion_screen.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../experts_screen/experts_screen.dart';
import '../screen_introduction/screen_splash.dart';
import '../screen_login/screen_login.dart';
import '../screen_register/screen_register.dart';
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
            CustomOutlineButton("Login", () {
              Navigator.pushNamed(context, ScreenLogin.route);
            }),
            CustomOutlineButton("Register", () {
              Navigator.pushNamed(context, ScreenRegister.route);
            }),
            CustomOutlineButton("Pitaj stručnjaka", () {
              Navigator.pushNamed(context, AskExpertCategoryScreen.route);
            }),
            CustomOutlineButton("Donacija robe", () {
              Navigator.pushNamed(context, DonationScreen.route);
            }),
            CustomOutlineButton("O nama", () {
              Navigator.pushNamed(context, AboutUsScreen.route);
            }),
            CustomOutlineButton("Stručnjaci", () {
              Navigator.pushNamed(context, ExpertsScreen.route);
            }),
            CustomOutlineButton("Introduction", () {
              Navigator.pushNamed(context, SplashScreen.route);
            }),
          ],
        )));
  }
}
