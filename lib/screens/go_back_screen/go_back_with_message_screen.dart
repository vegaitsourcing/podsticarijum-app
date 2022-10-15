import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/useful_widgets.dart';


class GoBackWithMessageScreen extends StatelessWidget {
  static const String route = "/go_back_with_message_screen";

  final String message;
  final Function() onClick;
  final String buttonText;

  const GoBackWithMessageScreen(this.message, this.onClick,
      {Key? key, this.buttonText = "Vrati se na početni ekran"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 171, 1.000),
      appBar: const NewAppBar(),
      body: centeredContainerWithFooter(
        context,
        containerWithImageAndText(context, 'images/cloud_with_heart.png',
            textWidget(context, message)),
        CustomOutlineButton(buttonText, onClick),
      ),
    );
  }
}
