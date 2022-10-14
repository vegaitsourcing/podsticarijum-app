import 'package:app_for_family_backup/common/widgets/app_bar/app_bar.dart';
import 'package:app_for_family_backup/common/widgets/default_background.dart';
import 'package:app_for_family_backup/screens/screen_experts/widgets/text_with_header_widget.dart';
import 'package:flutter/material.dart';

class ScreenDonation extends StatelessWidget {
  static String route = '/clothing_donation';
  final String najcescaPitanja;
  final String informacije;
  final String header;

  const ScreenDonation(this.najcescaPitanja, this.informacije, this.header,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundPaint: BackgroundPaint.Yellow),
      body: DefaultBackground(
        context,
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextWithHeaderWidget(
                  header,
                  najcescaPitanja,
                  hasImage: false,
                  spacing: 50,
                ),
                SizedBox(
                  height: 50,
                ),
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
