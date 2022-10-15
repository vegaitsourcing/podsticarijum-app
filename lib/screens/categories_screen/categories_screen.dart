import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';

class CategoriesScreen extends StatelessWidget {
  static const route = '/categories';

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            CustomOutlineButton("0-1 godina", () {}),
            CustomOutlineButton("1-3 godina", () {}),
            CustomOutlineButton("3-5 godina", () {}),
            CustomOutlineButton("5-7 godina", () {}),
          ],
        ),
      ),
    );
  }
}
