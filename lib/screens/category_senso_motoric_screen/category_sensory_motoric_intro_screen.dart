import 'package:flutter/material.dart';

import '../../common/data/pages/sensor_motor_development.dart';
import '../../common/enums/age_group_type.dart';
import '../../common/enums/development_ascpect_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_header.dart';
import '../category_details_screen/category_details_more_screen.dart';
import '../category_details_screen/category_intro_screen.dart';

class CategorySensoryMotorIntroScreen extends StatelessWidget {
  static const String route = '/category_sensory_motor_details_intro';

  List<String> bulletpointList = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.'
  ];

  CategorySensoryMotorIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("category intro screen");
    final args = ModalRoute.of(context)!.settings.arguments
        as CategoryIntroScreenArguments;

    const description = SensorMotorDevelopment.introData;
    const bulletpointList = SensorMotorDevelopment.dataList;

    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    buildTitle(context, args.developmentAspectType.title),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/about_us_bg.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Senzo-motorni razvoj utiče na procese učenja:',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ),
              const SizedBox(height: 20),
              ...bulletpointList.map(
                (bulletpoint) => _textWithIcon(bulletpoint, context),
              ),
              const SizedBox(height: 20),
              Text(
                'Pogledaj više informacija za određeni uzrast',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
              ),
              const SizedBox(height: 12.5),
              CustomOutlineButton(
                text: 'Pogledaj više',
                onClick: () {
                  Navigator.pushNamed(
                    context,
                    CategoryDetailsMoreScreen.route,
                    arguments: CategoryDetailsMoreScreenArguments(
                      args.ageGroupType,
                      args.developmentAspectType,
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParagraph(String paragraphText, BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            paragraphText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget _textWithIcon(String text, BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20), //shared padding
        Image.asset('images/menu_bullet_img.png'),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
