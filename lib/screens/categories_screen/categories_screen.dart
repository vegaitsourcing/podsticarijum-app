import 'package:flutter/material.dart';

import '../../common/enums/age_group_type.dart';
import '../../common/enums/app_bar_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import 'subcategories_screen.dart';

class CategoriesScreen extends StatelessWidget {
  static const route = '/categories';
  static const double _padding = 12;

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: const NewAppBar(appBarType: AppBarType.rootNav),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOutlineButton(
                  text: AgeGroupType.first.title,
                  onClick: () {
                    _navigate(AgeGroupType.first, context);
                  }),
              const SizedBox(height: _padding),
              CustomOutlineButton(
                  text: AgeGroupType.second.title,
                  onClick: () {
                    _navigate(AgeGroupType.second, context);
                  }),
              const SizedBox(height: _padding),
              CustomOutlineButton(
                  text: AgeGroupType.third.title,
                  onClick: () {
                    _navigate(AgeGroupType.third, context);
                  }),
              const SizedBox(height: _padding),
              CustomOutlineButton(
                  text: AgeGroupType.fourth.title,
                  onClick: () {
                    _navigate(AgeGroupType.fourth, context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void _navigate(AgeGroupType type, BuildContext context) {
    Navigator.pushNamed(
      context,
      SubCategoriesScreen.route,
      arguments: SubCategoriesScreenArguments(type),
    );
  }
}
