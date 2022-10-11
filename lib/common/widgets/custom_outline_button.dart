import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final double width;
  final Function() onClick;

  CustomOutlineButton(@required this.text, @required this.onClick,
      {this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: width,
          child: OutlinedButton(
            onPressed: onClick,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20, // mimics bottom margin
        )
      ],
    );
  }
}
