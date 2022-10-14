import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const route = '/menu';

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Podsticarium'),
          titleTextStyle: Theme.of(context).textTheme.headline6,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: Color(0xFF0A0909),
              ),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/menu_bullet_img.png',
                      // fit: BoxFit.cover,
                    ),
                     Text('Something')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
