import 'package:app_for_family_backup/common/widgets/app_bar/new_app_bar.dart';
import 'package:flutter/material.dart';

import '../../common/enums/app_bar_type.dart';
import '../../common/widgets/custom_outline_button.dart';

class SubCategoriesScreen extends StatelessWidget {
  static const route = '/subcategories';
  static const double _padding = 12;
  static const List<String> subCategories = [
    'Motorički razvoj',
    'Govorno-jezički razvoj',
    'Senzo-motorički razvoj',
    'Socio-emotivni razvoj',
    'Kognitivni razvoj',
  ];

  const SubCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: const NewAppBar(appBarType: AppBarType.rootNav),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: SingleChildScrollView(
            //scroll view to support all screens
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...subCategories.map((e) => _getColumnElement(e)).toList()
                ]),
          ),
        ),
      ),
    );
  }

  Widget _getColumnElement(String buttonText) {
    return Column(
      children: [
        CustomOutlineButton(text: buttonText, onClick: () {}),
        const SizedBox(height: 12),
      ],
    );
  }
}
