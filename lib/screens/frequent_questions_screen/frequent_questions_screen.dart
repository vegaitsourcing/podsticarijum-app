import '../../common/widgets/default_header.dart';
import '../experts_screen/widgets/text_with_header_widget.dart';
import '../../common/widgets/default_background.dart';
import '../../common/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

Widget questionAnswerWidget(
  String question,
  String answer, {
  bool hasBorder = true,
}) {
  return Column(
    children: [
      const SizedBox(height: 20),
      TextWithHeaderWidget(
        question,
        answer,
        hasImage: false,
        hasBorder: hasBorder,
        spacing: 15,
      ),
    ],
  );
}

class FrequentQuestionsScreen extends StatelessWidget {
  static const String route = '/screen_frequent_question';
  final Map<String, String> questionAndAnswers;
  final String categoryName;
  final List<Widget> questionAndAnswersWidgetList = [];

  FrequentQuestionsScreen(this.questionAndAnswers, this.categoryName,
      {super.key}) {
    for (int i = 0; i < questionAndAnswers.length - 1; ++i) {
      String question = questionAndAnswers.keys.elementAt(i);
      String answer = questionAndAnswers.values.elementAt(i);
      questionAndAnswersWidgetList.add(questionAnswerWidget(question, answer));
    }

    questionAndAnswersWidgetList.add(// add last element without a border
        questionAnswerWidget(
            questionAndAnswers.keys.last, questionAndAnswers.values.last,
            hasBorder: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundPaint: BackgroundPaint.Yellow),
      body: DefaultContainer(
        scale: 0.79,
        leftOffset: -50,
        context,
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultSubHeader(context, "Najčešća pitanja"),
                DefaultHeader(context, categoryName),
                const SizedBox(
                  height: 35,
                ),
                ...questionAndAnswersWidgetList
              ],
            ),
          ),
        ],
      ),
    );
  }
}
