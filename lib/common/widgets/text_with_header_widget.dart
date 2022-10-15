import 'package:flutter/material.dart';

import '../../../common/widgets/default_header.dart';

class TextWithHeaderWidget extends StatelessWidget {
  final String title;
  final String text;
  final double spacing;
  final TextStyle? textStyle;
  final bool hasBorder;

  const TextWithHeaderWidget(
    this.title,
    this.text, {
    Key? key,
    this.textStyle,
    this.spacing = 20.0,
    this.hasBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(context, title),
        SizedBox(height: spacing),
        Text(
          text,
          style: textStyle ?? Theme.of(context).textTheme.bodyText1,
        ),
        hasBorder ? Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Image.asset('images/separator.png'),
        ) : const SizedBox.shrink()
      ],
    );
  }
}
