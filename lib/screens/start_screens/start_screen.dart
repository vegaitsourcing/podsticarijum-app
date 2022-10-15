import '../../common/widgets/app_bar/app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const String route = "/start_screen";

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOutlineButton("kategorije razvoja", () {}),
            CustomOutlineButton("postavi pitanje", () {}),
          ],
        ),
      ),
    );
  }
}
