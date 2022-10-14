import '../../screens/screen_experts/widgets/text_with_header_widget.dart';
import '../../common/widgets/default_background.dart';
import '../../common/widgets/app_bar/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenFrequentQuestions extends StatelessWidget {
  final Map<String, String> questionAndAnswers;
  final String header;
  List<Widget> questionAndAnswersWidgetList = [];

  ScreenFrequentQuestions(this.questionAndAnswers, this.header, {super.key}) {
    questionAndAnswers
        .forEach((question, answer) => questionAndAnswersWidgetList.add(
              TextWithHeaderWidget(
                question,
                answer,
                hasImage: false,
                spacing: 50,
              ),
            ));
  }

  static String route = '/screen_frequent_question';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundPaint: BackgroundPaint.Yellow),
      body: DefaultContainer(
        context,
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("to be added")
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
