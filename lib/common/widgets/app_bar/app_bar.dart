import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
    backgroundColor: Colors.amber,
    shadowColor: Colors.transparent,
    title: AppBarCustom(),
  );
}

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      shadowColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall, // to be updated in overall theme class
              "APP FOR FAMILY BACKUP"),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ],
      ),
    );
  }
}
