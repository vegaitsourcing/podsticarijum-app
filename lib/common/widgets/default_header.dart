import 'package:flutter/material.dart';

Text DefaultHeader(BuildContext context, String text) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: Theme.of(context)
        .textTheme
        .headline2
        ?.copyWith(color: const Color(0xFF06070D)),
  );
}
