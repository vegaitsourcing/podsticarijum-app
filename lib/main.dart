import 'common/screens/go_back_with_message_screen.dart';
import 'screens/frequent_questions_screen/frequent_questions_screen.dart';
import 'screens/screen_introduction/splash_succeeder_screen.dart';

import 'screens/about_us_screen/screen_about_us.dart';
import 'screens/ask_expert_screen/ask_expert_form_screen.dart';
import 'screens/ask_expert_screen/ask_expert_category_screen.dart';
import 'screens/donation_screen/dontion_screen.dart';
import 'screens/experts_screen/experts_screen.dart';
import 'screens/screen_introduction/screen_splash.dart';
import 'screens/screen_introduction/start_screen.dart';
import 'screens/screen_login/screen_login.dart';
import 'screens/screen_register/screen_register.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          fontFamily: 'Amatic SC',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat'),
            bodyText2: TextStyle(fontSize: 14.0),
          ),
        ),
        title: "App for family backup",
        initialRoute:
            SplashSucceederScreen.route, // TODO: Change back to start screen
        routes: {
          StartScreen.route: (context) => StartScreen(),
          ScreenLogin.route: (context) => ScreenLogin(),
          ScreenRegister.route: (context) => ScreenRegister(),
          AboutUsScreen.route: (context) => AboutUsScreen(),
          AskExpertCategoryScreen.route: (context) => AskExpertCategoryScreen(),
          ExpertsScreen.route: (context) => ExpertsScreen(1),
          DonationScreen.route: (context) => DonationScreen(
                "masu masu pitanja",
                "masu masu informacija",
                "Header",
              ),
          SplashScreen.route: (context) => SplashScreen(),
          StartScreen.route: (context) => StartScreen(),
          AskExpertCategoryScreen.route: (context) => AskExpertCategoryScreen(),
          ExpertFormScreen.route: (context) => ExpertFormScreen(),
          SplashSucceederScreen.route: ((context) => SplashSucceederScreen(
              "Text in the centerText in the centerText in the centerText in the centerText in the centerText in the centerText in the centerText in the centerText in the center")),
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
      ),
    );
