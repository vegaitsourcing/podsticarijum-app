import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';

class FaqCategoriesScreen extends StatelessWidget {
  static const String route = '/faq_categories';

  const FaqCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const NewAppBar(),
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Text(
                  'Najčešće postavljena pitanja iz aspekta: ',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              CustomOutlineButton(text: "Motorički razvoj", onClick: () {}),
              CustomOutlineButton(text: "Govorno-jezički razvoj", onClick: () {}),
              CustomOutlineButton(text: "senzo-motorički razvoj", onClick: () {}),
              CustomOutlineButton(text: "socio-emotivni razvoj", onClick: () {}),
              CustomOutlineButton(text: "ishrana", onClick: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
