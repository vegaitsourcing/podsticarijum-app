import 'package:flutter/material.dart';

class FooterSplashScreen extends StatelessWidget {
  const FooterSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, right: 15.0, left: 15.0),
          child: Text(
            "Powered by",
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            height: 100,
            width: 100,
          ),
        )
      ]),
    );
  }
}
