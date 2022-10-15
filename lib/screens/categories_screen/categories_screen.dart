import 'package:app_for_family_backup/common/widgets/app_bar/new_app_bar.dart';
import 'package:flutter/material.dart';

import '../../common/enums/app_bar_type.dart';
import '../../common/widgets/custom_outline_button.dart';

class CategoriesScreen extends StatelessWidget {
  static const route = '/categories';

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: const NewAppBar(appBarType: AppBarType.rootNav),
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
