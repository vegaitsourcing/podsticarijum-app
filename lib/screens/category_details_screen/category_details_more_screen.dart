import 'package:app_for_family_backup/common/data/repository/category_repository.dart';
import 'package:flutter/material.dart';

import '../../common/enums/age_group_type.dart';
import '../../common/enums/development_ascpect_type.dart';
import '../../common/enums/flag_type.dart';
import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/default_container.dart';
import '../../common/widgets/default_header.dart';
import '../../common/widgets/useful_widgets.dart';
import '../categories_screen/categories_screen.dart';
import 'category_flags_screen.dart';

class CategoryDetailsMoreScreenArguments {
  AgeGroupType ageGroupType;
  DevelopmentAspectType developmentAspectType;

  CategoryDetailsMoreScreenArguments(
    this.ageGroupType,
    this.developmentAspectType,
  );
}

class CategoryDetailsMoreScreen extends StatelessWidget {
  static const String route = '/category_details_more';

  const CategoryDetailsMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as CategoryDetailsMoreScreenArguments;

    final categories = CategoryRepository.categories;
    final subcategories = categories
        .firstWhere((category) => category.ageGroupType == args.ageGroupType)
        .subcategories;
    final subcategory = subcategories.firstWhere((subcategory) =>
        subcategory.developmentAspectType == args.developmentAspectType);

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
                buildSubtitle(context, args.ageGroupType.title),
                buildTitle(context,
                    'Neurotipičan ${args.developmentAspectType.title}'),
                const SizedBox(height: 100),
                // ...paragraphList.map(
                //   (paragraph) => _buildParagraph(paragraph, context),
                // ),
                _buildParagraph(subcategory.staticContent, context),
                CustomOutlineButton(
                  text: "Podsticajne razvojne aktivnosti",
                  onClick: () => Navigator.pushNamed(
                    context,
                    CategoryFlagsScreen.route,
                    arguments: CategoryFlagsScreenArguments(
                      args.ageGroupType,
                      args.developmentAspectType,
                      FlagType.green,
                      subcategory.greenFlags,
                    ),
                  ),
                  isYellow: true,
                ),
                const SizedBox(height: 33),
                CustomOutlineButton(
                  text: "Znaci odstupanja",
                  onClick: () => Navigator.pushNamed(
                    context,
                    CategoryFlagsScreen.route,
                    arguments: CategoryFlagsScreenArguments(
                      args.ageGroupType,
                      args.developmentAspectType,
                      FlagType.red,
                      subcategory.redFlags,
                    ),
                  ),
                  isYellow: true,
                ),
                const SizedBox(height: 33),
                Image.asset('images/border_dot_line.png'),
                const SizedBox(height: 33),
                buildDefaultCustomForm(callback),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => Navigator.popUntil(
                      context,
                      ModalRoute.withName(CategoriesScreen.route),
                    ),
                    child: Text(
                      style: Theme.of(context).textTheme.headline4,
                      "Vrati se na početnu stranu",
                    ),
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
