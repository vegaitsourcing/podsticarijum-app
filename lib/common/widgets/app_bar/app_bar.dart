import 'package:flutter/material.dart';

enum BackgroundPaint {
  White,
  Yellow,
}

AppBar CustomAppBar({BackgroundPaint backgroundPaint = BackgroundPaint.White}) {
  const Color _backgroundYellow = const Color.fromRGBO(236, 239, 171, 1.000);
  Color color;

  switch (backgroundPaint) {
    case BackgroundPaint.White:
      color = Colors.white;
      break;
    case BackgroundPaint.Yellow:
      color = _backgroundYellow;
      break;
  }

  return AppBar(
    backgroundColor: color,
    shadowColor: Colors.transparent,
    title: mAppBar(color),
  );
}

class mAppBar extends StatelessWidget {
  final Color backgroundColor;

  const mAppBar(@required this.backgroundColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight:
                    FontWeight.bold), // to be updated in overall theme class
            "Podsticarijum"),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
