import 'package:flutter/material.dart';

import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class SplashSucceederScreen extends StatelessWidget {
  const SplashSucceederScreen({super.key});

  static const String route = "/splash_succeeder";
  static const String info = '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqui';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildLogoWidget(
              context,
              buildTitle(context, "Podsticarijum"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: Text(
                info,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomOutlineButton(
                text: "Počni",
                onClick: () {
                  // TODO: Add next screen;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
