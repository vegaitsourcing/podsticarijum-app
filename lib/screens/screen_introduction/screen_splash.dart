import '../../common/screens/screen_go_back_with_message.dart';
import '../../common/widgets/default_header.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  static const String route = "/splash_screen";

  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      body: centeredContainerWithFooter(
        context,
        containerWithImageAndText(context, 'images/cloud-with-heart.png',
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
