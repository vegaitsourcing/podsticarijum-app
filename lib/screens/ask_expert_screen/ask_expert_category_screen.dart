import 'package:flutter/material.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';

class AskExpertCategoryScreen extends StatelessWidget {
  static const String route = '/ask_expert';

  const AskExpertCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewAppBar(),
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
            CustomOutlineButton("Motorički razvoj", () {}),
            CustomOutlineButton("Govorno-jezički razvoj", () {}),
            CustomOutlineButton("senzo-motorički razvoj", () {}),
            CustomOutlineButton("socio-emotivni razvoj", () {}),
            CustomOutlineButton("ishrana", () {}),
          ],
        ),
      ),
    );
  }
}
