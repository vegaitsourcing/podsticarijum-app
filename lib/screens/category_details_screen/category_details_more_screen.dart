import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_container.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class CategoryDetailsMoreScreen extends StatelessWidget {
  static const String route = '/category_details_more_screen';
  final double marginBottom = 15;
  double _padding = 0;
  //data
  List<String> paragraphList = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
  ];

  CategoryDetailsMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        backgroundColor: Colors.white,
        body: DefaultContainer(
          scale: 0.79,
          leftOffset: -50,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSubtitle(context, "0-1 godina"),
                buildTitle(context, "Neurotipičan senzo-motorni razvoj"),
                const SizedBox(height: 100),
                ...paragraphList
                    .map(
                      (paragraph) => _buildParagraph(paragraph, context),
                    )
                    .toList(),
                CustomOutlineButton(
                  text: "Podsticajne razvojne aktivnosti",
                  onClick: () {},
                  isYellow: true,
                ),
                SizedBox(height: 33),
                CustomOutlineButton(
                  text: "Znaci odstupanja",
                  onClick: () {},
                  isYellow: true,
                ),
                SizedBox(height: 33),
                Image.asset('images/border_dot_line.png'),
                SizedBox(height: 33),
                buildDefaultCustomForm(callback),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                        style: Theme.of(context).textTheme.headline4,
                        "Vrati se na početnu stranu"),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void callback(String name, String mail, String questino) {
    print("name - $name \nemail - $mail\nquestion - $questino");
  }

  Widget _buildParagraph(String paragraphText, BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            paragraphText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
