import 'package:flutter/material.dart';

import '../about_us_screen/screen_about_us.dart';
import '../ask_expert_screen/ask_expert_category_screen.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../donation_screen/donation_screen.dart';
import '../experts_screen/experts_screen.dart';
import '../splash_screen/splash_screen.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Podsticarium")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
