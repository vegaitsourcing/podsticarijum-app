import 'package:flutter/material.dart';

import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class SplashScreen extends StatelessWidget {
  static const String route = "/splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: centeredContainerWithFooter(
        buildLogoWidget(
          context,
          buildTitle(context, "Podsticarijum"),
        ),
        buildFooterWidget(context)
      ),
    );
  }
}