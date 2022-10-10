import 'package:flutter/material.dart';

AppBar getAppBar({Color backgroundColor = Colors.amber}) {
  return AppBar(
    backgroundColor: backgroundColor,
    shadowColor: Colors.transparent,
    title: AppBarCustom(backgroundColor),
  );
}

class AppBarCustom extends StatelessWidget {
  final Color backgroundColor;

  const AppBarCustom(@required this.backgroundColor, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            style: Theme.of(context)
                .textTheme
                .headlineSmall, // to be updated in overall theme class
            "APP FOR FAMILY BACKUP"),
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
