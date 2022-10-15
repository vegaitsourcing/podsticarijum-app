import 'package:flutter/material.dart';

import 'common/theme.dart';
import 'screens/categories_screen/categories_screen.dart';
import 'screens/go_back_screen/go_back_with_message_screen.dart';
import 'screens/donation_screen/donation_screen.dart';
import 'screens/frequent_questions_screen/frequent_questions_screen.dart';
import 'screens/about_us_screen/screen_about_us.dart';
import 'screens/ask_expert_screen/ask_expert_form_screen.dart';
import 'screens/ask_expert_screen/ask_expert_category_screen.dart';
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
      initialRoute: CategoriesScreen.route,
      routes: {
        MenuScreen.route: (context) => MenuScreen(),
        AboutUsScreen.route: (context) => AboutUsScreen(),
        AskExpertCategoryScreen.route: (context) => AskExpertCategoryScreen(),
        ExpertsScreen.route: (context) => ExpertsScreen(1),
        DonationScreen.route: (context) => DonationScreen(
              "masu masu pitanja",
              "masu masu informacija",
              "Header",
            ),
        SplashScreen.route: (context) => SplashScreen(),
        ExpertFormScreen.route: (context) => ExpertFormScreen(),
        SplashSucceederScreen.route: (context) => SplashSucceederScreen("Text"),
        CategoriesScreen.route: (context) => CategoriesScreen(),
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
        GoBackWithMessageScreen.route: ((context) => GoBackWithMessageScreen(
              "Hvala na postavljenom pitanju, na vašu e-mail adresu će uskooro stići odgovor!",
              buttonText: "Vrati se na početni ekran",
              () {},
            )),
      },
    );
  }
}
