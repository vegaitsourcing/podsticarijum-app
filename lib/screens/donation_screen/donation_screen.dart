import 'package:app_for_family_backup/common/widgets/app_bar/new_app_bar.dart';
import 'package:app_for_family_backup/common/widgets/info_section_widget.dart';
import 'package:flutter/material.dart';

import '../../common/data/pages/donation_data.dart';
import '../../common/widgets/default_container.dart';
import '../../common/widgets/default_header.dart';

class DonationScreen extends StatelessWidget {
  static const String route = '/clothing_donation';

  const DonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewAppBar(),
      body: DefaultContainer(
        children: [
          buildTitle(context, "Donacije"),
          const SizedBox(height: 68),
          InfoSectionWidget(content: Donation.data),
          InfoSectionWidget(
            title: 'Informacije',
            content: Donation.address + Donation.telephone,
          ),
          InfoSectionWidget(
            content: Donation.telephone,
            hasBorder: false,
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
