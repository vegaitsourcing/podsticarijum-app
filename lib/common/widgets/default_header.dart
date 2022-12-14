import 'package:flutter/material.dart';

Text buildTitle(BuildContext context, String text) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: Theme.of(context)
        .textTheme
        .headline3
        ?.copyWith(color: const Color(0xFF06070D)),
  );
}

Text buildSubtitle(BuildContext context, String text) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: Theme.of(context)
        .textTheme
        .headline5
        ?.copyWith(color: const Color(0xFF06070D)),
  );
}
