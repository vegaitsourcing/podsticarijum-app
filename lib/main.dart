import 'package:flutter/material.dart';

import 'common/theme.dart';
import 'screens/categories_screen/categories_screen.dart';
import 'screens/go_back_screen/go_back_with_message_screen.dart';
import 'screens/donation_screen/donation_screen.dart';
import 'screens/frequent_questions_screen/frequent_questions_screen.dart';
import 'screens/about_us_screen/screen_about_us.dart';
import 'screens/ask_expert_screen/faq_categories_screen.dart';
import 'screens/experts_screen/experts_screen.dart';
import 'screens/menu_screen/menu_screen.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'screens/splash_screen/splash_succeeder_screen.dart';

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
        SplashScreen.route: (context) => const SplashScreen(),
        SplashSucceederScreen.route: (context) => const SplashSucceederScreen(),
        CategoriesScreen.route: (context) => const CategoriesScreen(),
        MenuScreen.route: (context) => const MenuScreen(),
        AboutUsScreen.route: (context) => const AboutUsScreen(),
        FaqCategoriesScreen.route: (context) => const FaqCategoriesScreen(),
        ExpertsScreen.route: (context) => const ExpertsScreen(),
        DonationScreen.route: (context) => const DonationScreen(),
        FrequentQuestionsScreen.route: (context) =>
            FrequentQuestionsScreen(const {
              "neko pitanje": "neki odgovor",
              "neko pitanje 2": "neki odgovor 2",
              "neko pitanje 3": "neki odgovor 3",
              "PITANJE ALLOO": "neki odgovor",
              "neko pitanje 5": "neki odgovor",
              "neko pitanje 6": "neki odgovor",
              "neko pitanje 7": "neki odgovor",
            }, "Motorički razvoj"),
        GoBackWithMessageScreen.route: (context) => GoBackWithMessageScreen(
              onButtonClick: () {},
            )
      },
    );
  }
}
