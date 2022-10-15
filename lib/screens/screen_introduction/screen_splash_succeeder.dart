import '../../common/screens/screen_go_back_with_message.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_header.dart';
import '../../screens/screen_introduction/screen_start.dart';
import 'package:flutter/material.dart';

class ScreenSplashSucceeder extends StatelessWidget {
  final String text;

  const ScreenSplashSucceeder(this.text, {super.key});
  static String route = "/splash_screen_succeeder";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      body: Container(
        alignment: Alignment.center,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          containerWithImageAndText(
            context,
            'images-cloud-with-heart.png',
            DefaultHeader(context, "Podsticarijum"),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          CustomOutlineButton(
            "Počni",
            () {
              Navigator.pushNamed(context, ScreenStart.route);
            },
          ),
        ]),
      ),
    );
  }
}
