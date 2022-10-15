import 'package:flutter/material.dart';

import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class SplashSucceederScreen extends StatelessWidget {
  final String text;

  const SplashSucceederScreen(this.text, {super.key});
  static const String route = "/splash_screen_succeeder";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildLogoWidget(
              context,
              buildTitle(context, "Podsticarijum"),
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
          ],
        ),
      ),
    );
  }
}
