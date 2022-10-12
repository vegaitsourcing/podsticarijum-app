import 'package:flutter/material.dart';

class ScrollableContentWidget extends StatelessWidget {
  ScrollableContentWidget({
    super.key,
    required this.title,
    required this.content,
    this.subtitle,
  });

  String? subtitle;
  final String title;
  final String content;

  double get backgroundOffset => subtitle != null ? 0 : -100;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: backgroundOffset,
            child: Image.asset('images/about_us_bg.png', scale: 0.8),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                subtitle == null
                    ? const SizedBox(height: 0)
                    : Column(
                        children: [
                          Text(
                            subtitle!,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: const Color(0xFF06070D)),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: const Color(0xFF06070D)),
                ),
                const SizedBox(height: 68),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 35)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
