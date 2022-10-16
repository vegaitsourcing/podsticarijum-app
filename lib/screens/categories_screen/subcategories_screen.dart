import 'package:app_for_family_backup/screens/category_cognitive_screen/category_cognitive_intro_screen.dart';
import 'package:app_for_family_backup/screens/category_emotional_screen/category_emotional_intro_screen.dart';
import 'package:app_for_family_backup/screens/category_language_screen/category_language_intro_screen.dart';
import 'package:flutter/material.dart';

import '../../common/enums/age_group_type.dart';
import '../../common/enums/app_bar_type.dart';
import '../../common/enums/development_ascpect_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../category_details_screen/category_intro_screen.dart';
import '../category_motoric_screen/category_motor_intro_screen.dart';
import '../category_senso_motoric_screen/category_sensory_motoric_intro_screen.dart';

class SubCategoriesScreenArguments {
  AgeGroupType ageGroupType;

  SubCategoriesScreenArguments(this.ageGroupType);
}

class SubCategoriesScreen extends StatelessWidget {
  SubCategoriesScreenArguments? args;

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...DevelopmentAspectType.values
                        .map((aspectType) =>
                            _getColumnElement(context, aspectType))
                        .toList(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getColumnElement(BuildContext context, DevelopmentAspectType type) {
    return Column(
      children: [
        CustomOutlineButton(
          text: type.title,
          onClick: () {
            if (args != null) {
              final String route;
              switch (type) {
                case DevelopmentAspectType.motoric:
                  route = CategoryMotorIntroScreen.route;
                  break;
                case DevelopmentAspectType.linguistic:
                  route = CategoryLanguageIntroScreen.route;
                  break;
                case DevelopmentAspectType.sensoMotoric:
                  route = CategorySensoryMotorIntroScreen.route;
                  break;
                case DevelopmentAspectType.socioEmotional:
                  route = CategoryEmotionalIntroScreen.route;
                  break;
                case DevelopmentAspectType.cognitive:
                  route = CategoryCognitiveIntroScreen.route;
                  break;
              }

              Navigator.pushNamed(
                context,
                route,
                arguments: CategoryIntroScreenArguments(
                  args!.ageGroupType,
                  type,
                ),
              );
            }
          },
        ),
        const SizedBox(height: _padding),
      ],
    );
  }
}
