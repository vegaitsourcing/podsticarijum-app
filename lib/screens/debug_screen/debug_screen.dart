import 'package:app_for_family_backup/screens/debug_screen/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application for family backup title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Application for family backup"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonDebugScreen("Login", () {}),
            ButtonDebugScreen("Register", () {}),
            ButtonDebugScreen("Pitaj stručnjaka", () {}),
            ButtonDebugScreen("Donacija robe", () {}),
            ButtonDebugScreen("O nama", () {}),
            ButtonDebugScreen("Stručnjaci", () {}),
          ],
        )),
      ),
    );
  }
}
