import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final Function() onClick;

  CustomOutlineButton({
    super.key,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.green,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/button_bg.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: OutlinedButton(
        onPressed: onClick,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
