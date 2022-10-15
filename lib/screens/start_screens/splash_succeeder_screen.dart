import 'package:flutter/material.dart';

import '../go_back_screen/go_back_with_message_screen.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_header.dart';

class SplashSucceederScreen extends StatelessWidget {
  final String text;

  const SplashSucceederScreen(this.text, {super.key});
  static const String route = "/splash_screen_succeeder";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          containerWithImageAndText(
            context,
            'images/cloud_with_heart.png',
            DefaultHeader(context, "Podsticarijum"),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          CustomOutlineButton(
            "Počni",
            () {
              // TODO: Add next screen;
            },
          ),
        ]),
      ),
    );
  }
}
