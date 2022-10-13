import 'package:app_for_family_backup/screens/introduction_screen/widgets/footer_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String route = "/splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  child: Text(
                    textAlign: TextAlign.center,
                    "APP for FAMILY".toUpperCase(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FooterSplashScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
