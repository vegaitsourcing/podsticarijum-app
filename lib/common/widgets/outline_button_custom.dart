import 'package:flutter/material.dart';

class OutlineButtonCustom extends StatelessWidget {
  final String text;
  final Function() onClick;
  OutlineButtonCustom(@required this.text, @required this.onClick);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
