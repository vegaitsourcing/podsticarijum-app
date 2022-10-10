import 'package:app_for_family_backup/common/widgets/app_bar/app_bar.dart';
import 'package:app_for_family_backup/common/widgets/outline_button_custom.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static String route = "/start_screen";

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButtonCustom("kategorije razvoja", () {}),
            OutlineButtonCustom("postavi pitanje", () {}),
          ],
        ),
      ),
    );
  }
}
