import 'package:flutter/material.dart';

import '../../common/widgets/app_bar/new_app_bar.dart';
import '../../common/widgets/custom_outline_button.dart';
import '../../common/widgets/useful_widgets.dart';

/**
 * sole purpose of this screen's name:
 *    FRUSTRATE NIKOLA IVANOVIC
 * because he removed maxLines property saying it wasn't needed making me spend time in search for the bug
 *   Sincerely, apprentice
 */
class ekranZahvalnosti extends StatelessWidget {
  static const String route = "/go_back_with_message";

  final Function() onButtonClick;

  const ekranZahvalnosti({
    Key? key,
    required this.onButtonClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const NewAppBar(),
      body: centeredContainerWithFooter(
        buildLogoWidget(
          context,
          Text(
            overflow: TextOverflow.ellipsis,
            'Hvala na postavljenom pitanju, na vašu e-mail adresu će uskooro stići odgovor!',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
            maxLines: 5,
          ),
        ),
        Column(
          children: [
            CustomOutlineButton(
                text: "Vrati se na početni ekran", onClick: onButtonClick),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
