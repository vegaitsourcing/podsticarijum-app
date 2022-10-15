import 'package:flutter/material.dart';

import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class SplashScreen extends StatelessWidget {
  static const String route = "/splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      body: centeredContainerWithFooter(
        context,
        containerWithImageAndText(context, 'images/cloud_with_heart.png',
            DefaultHeader(context, "Podsticarijum")),
        Column(
          children: [
            Text(
              "Powered by",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Image.asset('images/czpn_logo.png'),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
