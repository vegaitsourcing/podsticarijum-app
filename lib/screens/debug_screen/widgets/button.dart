import 'package:flutter/material.dart';

class ButtonDebugScreen extends StatelessWidget {
  final String text;
  final Function() onClick;
  ButtonDebugScreen(@required this.text, @required this.onClick);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
