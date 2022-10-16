import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    super.key,
    required this.children,
    this.leftOffset = 0,
    this.scale = 0.8,
  });

  final List<Widget> children;
  final double leftOffset;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: -100,
            left: leftOffset,
            child: Image.asset('images/about_us_bg.png', scale: scale),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
