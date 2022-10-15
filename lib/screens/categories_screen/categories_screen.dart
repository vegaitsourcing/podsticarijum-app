import 'package:flutter/material.dart';

import '../../common/enums/app_bar_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOutlineButton(text: "0-1 godina", onClick: () {}),
              const SizedBox(height: 10),
              CustomOutlineButton(text: "1-3 godina", onClick: () {}),
              const SizedBox(height: 10),
              CustomOutlineButton(text: "3-5 godina", onClick: () {}),
              const SizedBox(height: 10),
              CustomOutlineButton(text: "5-7 godina", onClick: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
