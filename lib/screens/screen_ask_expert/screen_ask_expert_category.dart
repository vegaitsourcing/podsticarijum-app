import '../../common/widgets/app_bar/app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';

class ScreenAskExpertCategory extends StatelessWidget {
  static const String route = '/ask_expert';

  const ScreenAskExpertCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
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
