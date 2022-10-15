import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.id,
    required this.title,
    required this.selectedItemId,
    required this.onSelected,
  });

  // TODO: Create menu item model
  final int id;
  final String title;
  final int? selectedItemId;
  final Function(BuildContext,int) onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onSelected(context, id)},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        decoration: BoxDecoration(
          color: selectedItemId == id ? Theme.of(context).primaryColor : null,
        ),
        child: Row(
          children: [
            Image.asset('images/menu_bullet_img.png'),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(title,
                  style: selectedItemId == id
                      ? Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.bodyText1),
            ),
          ],
        ),
      ),
    );
  }
}
