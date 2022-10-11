import 'dart:ffi';

import 'package:app_for_family_backup/common/widgets/app_bar/app_bar.dart';
import 'package:app_for_family_backup/common/widgets/custom_outline_button.dart';
import 'package:app_for_family_backup/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FormScrollable extends StatefulWidget {
  final List<Widget> children;
  final String submitButtonText;
  final Function onValidCallback; // data contains information about

  FormScrollable(
      {Key? key,
      required this.children,
      required this.submitButtonText,
      required this.onValidCallback})
      : super(key: key);

  @override
  State<FormScrollable> createState() => _FormScrollableState();
}

class _FormScrollableState extends State<FormScrollable> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    widget.children.add(CustomOutlineButton(widget.submitButtonText, () {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState?.save();
        widget.onValidCallback();
      }
    }));

    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
