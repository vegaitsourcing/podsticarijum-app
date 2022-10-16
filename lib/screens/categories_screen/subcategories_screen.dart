import 'package:flutter/material.dart';

import '../../common/enums/age_group_type.dart';
import '../../common/enums/app_bar_type.dart';
import '../../common/enums/development_ascpect_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../category_details_screen/category_details_intro_screen.dart';

class SubCategoriesScreenArguments {
  AgeGroupType ageGroupType;
  SubCategoriesScreenArguments(this.ageGroupType);
}

class SubCategoriesScreen extends StatelessWidget {
  SubCategoriesScreenArguments? args = null;

  static const route = '/subcategories';
  static const double _padding = 12;
  static const List<String> subCategories = [
    'Motorički razvoj',
    'Govorno-jezički razvoj',
    'Senzo-motorički razvoj',
    'Socio-emotivni razvoj',
    'Kognitivni razvoj',
  ];

  SubCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments
        as SubCategoriesScreenArguments;

    print(args!.ageGroupType);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: const NewAppBar(appBarType: AppBarType.rootNav),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: SingleChildScrollView(
            //scroll view to support all screens
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...DevelopmentAspectType.values
                  .map((e) => _getColumnElement(e, context))
                  .toList(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getColumnElement(DevelopmentAspectType type, BuildContext context) {
    return Column(
      children: [
        CustomOutlineButton(
          text: developmentAspectTypeStrings[type.index],
          onClick: () {
            if (args != null) {
              Navigator.pushNamed(context, CategoryDetailsIntroScreen.route,
                  arguments: CategoryDetailsIntroScreenArguments(
                    args!.ageGroupType,
                    type,
                  ));
            }
          },
        ),
        const SizedBox(height: _padding),
      ],
    );
  }
}
