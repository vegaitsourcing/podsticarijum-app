import 'package:app_for_family_backup/common/data/FAQ/language_development.dart';

import '../../common/data/FAQ/sensory_motor_development.dart';
import '../../common/data/FAQ/social_emotional_development.dart';
import 'package:app_for_family_backup/common/data/FAQ/motor_development.dart';
import 'package:app_for_family_backup/common/data/FAQ/nutrition_data.dart';
import 'package:flutter/material.dart';
import '../../common/enums/development_ascpect_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/info_section_widget.dart';
import '../../common/widgets/default_container.dart';

class FaqAnswersScreenArguments {
  DevelopmentAspectType type;

  FaqAnswersScreenArguments(this.type);
}

class FaqAnswersScreen extends StatelessWidget {
  static const String route = '/screen_frequent_question';

  const FaqAnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as FaqAnswersScreenArguments;
    Map<String, String> questionAndAnswers;
    questionAndAnswers = MotorDevelopment().questionAndAnswers;
    print(args.type);
    switch (args.type) {
      case DevelopmentAspectType.socioEmotional:
        {
          questionAndAnswers = SocialEmotionalDevelopment().questionAndAnswers;
          break;
        }
      case DevelopmentAspectType.motoric:
        questionAndAnswers = MotorDevelopment().questionAndAnswers;
        break;
      case DevelopmentAspectType.linguistic:
        questionAndAnswers = LanguageDevelopment().questionAndAnswers;
        break;
      case DevelopmentAspectType.sensoMotoric:
        questionAndAnswers = SensoryMotorDevelopment().questionAndAnswers;
        break;
      case DevelopmentAspectType.cognitive:
        questionAndAnswers = NutritionData().questionAndAnswers;
        break;
    }

    final List<Widget> questionAndAnswersWidgetList = [];

    for (int i = 0; i < questionAndAnswers.length - 1; ++i) {
      String question = questionAndAnswers.keys.elementAt(i);
      String answer = questionAndAnswers.values.elementAt(i);
      questionAndAnswersWidgetList.add(_questionAnswerWidget(question, answer));
    }

    questionAndAnswersWidgetList.add(// add last element without a border
        _questionAnswerWidget(
            questionAndAnswers.keys.last, questionAndAnswers.values.last,
            hasBorder: false));

    return Scaffold(
      appBar: const NewAppBar(),
      body: DefaultContainer(
        scale: 0.79,
        leftOffset: -30,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSubtitle(context, "Najčešća pitanja"),
              buildTitle(
                context,
                args.type.title,
              ),
              const SizedBox(height: 35),
              ...questionAndAnswersWidgetList
            ],
          ),
        ],
      ),
    );
  }

  Widget _questionAnswerWidget(
    String question,
    String answer, {
    bool hasBorder = true,
  }) {
    return Column(
      children: [
        const SizedBox(height: 20),
        InfoSectionWidget(
          title: question,
          content: answer,
          hasBorder: hasBorder,
          spacing: 15,
        ),
      ],
    );
  }
}
