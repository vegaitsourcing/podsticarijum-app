import 'package:app_for_family_backup/common/theme.dart';
import 'package:app_for_family_backup/screens/menu_screen/menu_screen.dart';
import 'package:flutter/material.dart';
import 'screens/about_us_screen/about_us_screen.dart';
import 'screens/ask_expert_screen/ask_expert_screen.dart';
import 'screens/category_details_screen/category_details_screen.dart';
import 'screens/clothing_donation_screen/clothing_donation_screen.dart';
import 'screens/experts_screen/experts_screen.dart';
import 'screens/introduction_screen/splash_screen.dart';
import 'screens/introduction_screen/start_screen.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/register_screen/register_screen.dart';

void main() => runApp(FamilyBackupApp());

class FamilyBackupApp extends StatelessWidget {
  FamilyBackupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FamilyBackupTheme.familyAppThemeData,
      title: "App for family backup",
      initialRoute: MenuScreen.route, // TODO: Change back to start screen
      routes: {
        '/': (context) => StartScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        RegisterScreen.route: (context) => RegisterScreen(),
        AboutUsScreen.route: (context) => AboutUsScreen(),
        AskExpertScreen.route: (context) => AskExpertScreen(),
        ExpertsScreen.route: (context) => ExpertsScreen(),
        ClothingDonationScreen.route: (context) => ClothingDonationScreen(),
        SplashScreen.route: (context) => SplashScreen(),
        StartScreen.route: (context) => StartScreen(),
        CategoryDetailsScreen.route: (context) => CategoryDetailsScreen(),
        MenuScreen.route: (context) => MenuScreen(),
      },
    );
  }
}
