import 'package:flutter/material.dart';

import '../../enums/flag_type.dart';

class FlagSection extends StatelessWidget {
  const FlagSection({
    super.key,
    required this.content,
    required this.flagType,
  });
  final String content;
  final FlagType flagType;

  Image _renderFlag() {
    if (flagType == FlagType.green) {
      return Image.asset('images/green_flag_img.png');
    } else {
      return Image.asset('images/red_flag_img.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: _renderFlag(),
          ),
          Expanded(
            child: Text(
              content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}