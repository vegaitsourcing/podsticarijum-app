import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/useful_widgets.dart';

class AskExpertFormScreen extends StatelessWidget {
  static const String route = 'ask_expert_form_screen';
  final double marginBottom = 15;
  double _padding = 0;
  AskExpertFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: buildDefaultCustomForm(callback),
        ),
      ),
    );
  }

  void callback(String name, String mail, String questino) {
    print("name - $name \nemail - $mail\nquestion - $questino");
  }
}
