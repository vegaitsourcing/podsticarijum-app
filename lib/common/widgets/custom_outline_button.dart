import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final double width;
  final Function() onClick;
  final double horizontalPadding;

  CustomOutlineButton(this.text, this.onClick,
      {this.width = double.infinity, this.horizontalPadding = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Container(
            height: 70,
            width: width,
            child: OutlinedButton(
              onPressed: onClick,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0), //doesn't have an effect
                child: Text(
                  text.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20) //mimics button margin
      ],
    );
  }
}
