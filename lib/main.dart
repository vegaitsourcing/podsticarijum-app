import 'package:flutter/material.dart';

import 'common/theme.dart';
import 'screens/categories_screen/subcategories_screen.dart';
import 'screens/categories_screen/categories_screen.dart';
import 'screens/category_details_screen/category_details_intro_screen.dart';
import 'screens/category_details_screen/category_details_pros_n_cons.dart';
import 'screens/category_details_screen/category_details_more_screen.dart';
import 'screens/category_details_screen/category_details_screen.dart';
import 'screens/go_back_screen/ekran_zahvalnosti.dart';
import 'screens/donation_screen/donation_screen.dart';
import 'screens/frequent_questions_screen/frequent_questions_screen.dart';
import 'screens/about_us_screen/screen_about_us.dart';
import 'screens/ask_expert_screen/faq_categories_screen.dart';
import 'screens/experts_screen/experts_screen.dart';
import 'screens/menu_screen/menu_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() => runApp(const FamilyBackupApp());

class FamilyBackupApp extends StatelessWidget {
  const FamilyBackupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FamilyBackupTheme.familyAppThemeData,
      title: 'Podsticarium',
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (context) => SplashScreen(),
        CategoriesScreen.route: (context) => const CategoriesScreen(),
        SubCategoriesScreen.route: (context) => SubCategoriesScreen(),
        CategoryDetailsIntroScreen.route: (context) =>
            CategoryDetailsIntroScreen(),
        CategoryDetailsScreen.route: (context) => const CategoryDetailsScreen(),
        CategoryDetailsMoreScreen.route: (context) =>
            CategoryDetailsMoreScreen(),
        CategoryDetailsProsNConsScreen.route: (context) =>
            CategoryDetailsProsNConsScreen(),
        MenuScreen.route: (context) => const MenuScreen(),
        AboutUsScreen.route: (context) => const AboutUsScreen(),
        ExpertsScreen.route: (context) => const ExpertsScreen(),
        DonationScreen.route: (context) => const DonationScreen(),
        FaqCategoriesScreen.route: (context) => const FaqCategoriesScreen(),
        FaqAnswersScreen.route: (context) => FaqAnswersScreen(const {
              "neko pitanje": "neki odgovor",
              "neko pitanje 2": "neki odgovor 2",
              "neko pitanje 3": "neki odgovor 3",
              "PITANJE ALLOO": "neki odgovor",
              "neko pitanje 5": "neki odgovor",
              "neko pitanje 6": "neki odgovor",
              "neko pitanje 7": "neki odgovor",
            }, "Motorički razvoj"),
        ekranZahvalnosti.route: (context) => ekranZahvalnosti()
      },
    );
  }
}
