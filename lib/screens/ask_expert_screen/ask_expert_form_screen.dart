import 'package:app_for_family_backup/common/widgets/app_bar/new_app_bar.dart';

import '../../common/widgets/scrollable_form.dart';
import '../../common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ExpertFormScreen extends StatefulWidget {
  static const String route = '/ask_expert_form_screen';

  const ExpertFormScreen({super.key});

  @override
  State<ExpertFormScreen> createState() => _ExpertFormScreenState();
}

class _ExpertFormScreenState extends State<ExpertFormScreen> {
  final double _padding = 30;

  String? imePrezime = null;
  String? email = null;
  String? pitanje = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewAppBar(), //default background paint is white
      body: FormScrollable(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              "Postavi pitanje",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          CustomTextFormField(
            hint: "Unesi ime i prezime",
            labelText: "Ime i prezime",
            padding: _padding,
            onSaved: (value) => {imePrezime = value},
          ),
          CustomTextFormField(
            hint: "Unesi e-mail adresu",
            labelText: "Adresa",
            padding: _padding,
            onSaved: (value) => {email = value},
          ),
          CustomTextFormField(
            hint: "Pošalji pitanje",
            labelText: "Pitanje",
            largeInputField: true,
            padding: _padding,
            onSaved: (value) => {pitanje = value},
          ),
        ],
        submitButtonText: "SUBMIT YEAH",
        onValidCallback: () =>
            {print("Form input -> $imePrezime $email $pitanje")},
      ),
    );
  }
}
