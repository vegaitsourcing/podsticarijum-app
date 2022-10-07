import 'package:app_for_family_backup/screens/debug_screen/widgets/button.dart';
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
              Navigator.pushNamed(context, '/login');
            }),
            ButtonDebugScreen("Register", () {
              Navigator.pushNamed(context, '/register');
            }),
            ButtonDebugScreen("Pitaj stručnjaka", () {
              Navigator.pushNamed(context, '/ask_expert');
            }),
            ButtonDebugScreen("Donacija robe", () {
              Navigator.pushNamed(context, '/clothing_donation');
            }),
            ButtonDebugScreen("O nama", () {
              Navigator.pushNamed(context, '/about_us');
            }),
            ButtonDebugScreen("Stručnjaci", () {
              Navigator.pushNamed(context, '/experts');
            }),
          ],
        )));
  }
}
