import 'package:flutter/material.dart';

Widget DefaultContainer(BuildContext context, List<Widget> children,
    {double scale = 0.8}) {
  return Stack(
    children: [
      Positioned(
        top: -100,
        child: Image.asset('images/about_us_bg.png', scale: scale),
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
