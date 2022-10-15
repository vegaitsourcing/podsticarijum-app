import 'package:flutter/material.dart';

Text textWidget(BuildContext context, String text) {
  return Text(
    maxLines: 20,
    overflow: TextOverflow.ellipsis,
    text,
    style: Theme.of(context).textTheme.headline5,
    textAlign: TextAlign.center,
  );
}

Widget containerWithImageAndText(
  BuildContext context,
  String imgUrl,
  Text textWidget,
) {
  return Container(
    width: MediaQuery.of(context).size.width,
    color: const Color.fromRGBO(236, 239, 171, 1.000),
    child: Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            imgUrl,
            scale: 0.5,
          ),
        ),
        Container(
          width: 230,
          height: 150,
          alignment: Alignment.center,
          child: SizedBox(child: textWidget),
        ),
      ],
    ),
  );
}

Widget centeredContainerWithFooter(
  BuildContext context,
  Widget centeredWidget,
  Widget footerWidget,
) {
  return Container(
    height: double.infinity,
    child: Stack(
      children: [
        Positioned(
          child: Align(
            alignment: Alignment.center,
            child: centeredWidget,
          ),
        ),
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: footerWidget,
          ),
        )
      ],
    ),
  );
}
