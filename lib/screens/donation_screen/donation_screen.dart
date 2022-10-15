import 'package:app_for_family_backup/common/widgets/app_bar/new_app_bar.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/default_container.dart';
import '../experts_screen/widgets/text_with_header_widget.dart';

class DonationScreen extends StatelessWidget {
  static const String route = '/clothing_donation';
  final String opisDonacija;
  final String informacije;
  final String header;

  const DonationScreen(this.opisDonacija, this.informacije, this.header,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewAppBar(),
      body: DefaultContainer(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextWithHeaderWidget(
                  header,
                  opisDonacija,
                  hasImage: false,
                  spacing: 50,
                ),
                const SizedBox(height: 50),
                TextWithHeaderWidget(
                  "Informacije",
                  informacije,
                  hasImage: false,
                  spacing: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
