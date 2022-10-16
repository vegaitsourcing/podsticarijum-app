import 'package:app_for_family_backup/common/enums/category_detail_type.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_container.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';

class CategoryDetailsProsNConsScreen extends StatelessWidget {
  static const String route = '/category_details_more_advantages_screen';
  final double marginBottom = 15;
  double _padding = 0;
  CategoryDetailType type;
  //data
  List<String> paragraphList = [
    'Lorem ipsum dolor sit ',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
  ];

  CategoryDetailsProsNConsScreen(
      {Key? key, this.type = CategoryDetailType.pros})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        backgroundColor: Colors.white,
        body: DefaultContainer(
          scale: 0.71,
          leftOffset: -50,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSubtitle(context, "0-1 godina"),
                buildTitle(context,
                    "Podsticarijum igre i aktivnosti, stimulativne za razvoj vaše bebe i deteta."),
                const SizedBox(height: 100),
                ...paragraphList
                    .map(
                      (paragraph) => _buildParagraph(paragraph, context),
                    )
                    .toList(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(type == CategoryDetailType.pros
                  ? 'images/green_flag_img.png'
                  : 'images/red_flag_img.png'),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  paragraphText,
                  style: Theme.of(context).textTheme.bodyText1,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
