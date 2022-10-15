import 'package:app_for_family_backup/common/data/about_us.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/default_container.dart';
import '../../common/widgets/default_header.dart';

class AboutUsScreen extends StatelessWidget {
  static const String route = '/about_us';

  const AboutUsScreen({super.key});

  List<Widget> buildScreenContent(BuildContext context) {
    return [
      const SizedBox(height: 20),
      buildTitle(context, 'O NAMA'),
      const SizedBox(height: 68),
      Text(
        _description,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      const SizedBox(height: 35)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        body: DefaultContainer(children: buildScreenContent(context)),
      ),
    );
  }

  static const _description = AboutUs.data;
}
