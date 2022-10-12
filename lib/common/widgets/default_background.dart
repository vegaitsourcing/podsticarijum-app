import 'package:flutter/material.dart';

Widget DefaultBackground(BuildContext context, List<Widget> children) {
  return Stack(
    children: [
      Positioned(
        top: -100,
        child: Image.asset('images/about_us_bg.png', scale: 0.8),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    ],
  );
}
