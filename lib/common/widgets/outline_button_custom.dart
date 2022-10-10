import 'package:flutter/material.dart';

class OutlineButtonCustom extends StatelessWidget {
  final String text;
  final Function() onClick;
  OutlineButtonCustom(@required this.text, @required this.onClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 320,
          child: OutlinedButton(
            onPressed: onClick,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text.toUpperCase(),
                style: TextStyle(color: Colors.white),
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
