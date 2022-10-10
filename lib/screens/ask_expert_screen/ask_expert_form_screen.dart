import 'package:app_for_family_backup/common/widgets/app_bar/app_bar.dart';
import 'package:app_for_family_backup/common/widgets/outline_button_custom.dart';
import 'package:app_for_family_backup/common/widgets/text_form_field_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AskExpertFormScreen extends StatefulWidget {
  static const String route = '/ask_expert_form_screen';

  const AskExpertFormScreen({super.key});

  @override
  State<AskExpertFormScreen> createState() => _AskExpertFormScreenState();
}

class _AskExpertFormScreenState extends State<AskExpertFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(backgroundColor: Colors.white),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Postavi pitanje",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextFormFieldCustom(
              hint: "Unesi ime i prezime",
              labelText: "Ime i prezime",
            ),
            TextFormFieldCustom(
              hint: "Unesi e-mail adresu",
              labelText: "Adresa",
            ),
            TextFormFieldCustom(
              hint: "Pošalji pitanje",
              labelText: "Pitanje",
              largeInputField: true,
            ),
            OutlineButtonCustom("Postavi pitanje", () {})
          ],
        ),
      ),
    );
  }
}
