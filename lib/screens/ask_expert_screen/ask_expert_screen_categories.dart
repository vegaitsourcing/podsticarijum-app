import 'package:app_for_family_backup/common/widgets/app_bar/app_bar.dart';
import 'package:app_for_family_backup/common/widgets/outline_button_custom.dart';
import 'package:flutter/material.dart';

class AskExpertScreen extends StatelessWidget {
  static String route = '/ask_expert';

  const AskExpertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall, // to be updated in overall theme class
                  "POSTAVI PITANJE\nSTRUČNJAKU ZA:"),
            ),
            OutlineButtonCustom("Motorički razvoj", () {}),
            OutlineButtonCustom("Govorno-jezički razvoj", () {}),
            OutlineButtonCustom("senzo-motorički razvoj", () {}),
            OutlineButtonCustom("socio-emotivni razvoj", () {}),
            OutlineButtonCustom("ishrana", () {}),
          ],
        ),
      ),
    );
  }
}
