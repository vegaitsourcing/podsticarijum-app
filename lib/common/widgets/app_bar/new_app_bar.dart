import 'package:flutter/material.dart';

import '../../../screens/menu_screen/menu_screen.dart';
import '../../enums/app_bar_type.dart';

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewAppBar({
    Key? key,
    this.appBarType = AppBarType.rootNav,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final AppBarType appBarType;

  @override
  final Size preferredSize;

  Color getBackgroundColor(BuildContext context) {
    if (appBarType == AppBarType.rootNav) {
      return Theme.of(context).primaryColor;
    } else {
      return Theme.of(context).scaffoldBackgroundColor;
    }
  }

  IconButton buildMenuAction(BuildContext context) {
    if (appBarType == AppBarType.rootNav) {
      return IconButton(
        onPressed: () => Navigator.pushNamed(context, MenuScreen.route),
        icon: const ImageIcon(
          AssetImage('images/menu_icon.png'),
          color: Colors.black,
        ),
      );
    } else {
      return IconButton(
        onPressed: () => Navigator.maybePop(context),
        icon: const Icon(Icons.close),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: getBackgroundColor(context),
      title: const Text('Podsticarium'),
      titleTextStyle: Theme.of(context).textTheme.headline6,
      elevation: 0,
      actions: [buildMenuAction(context)],
    );
  }
}
