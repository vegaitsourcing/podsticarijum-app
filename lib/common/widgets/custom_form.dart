import 'package:flutter/material.dart';

import 'custom_outline_button.dart';

class CustomForm extends StatefulWidget {
  final List<Widget> children;
  final String submitButtonText;
  final Function onValidCallback; // data contains information about

  const CustomForm({
    Key? key,
    required this.children,
    required this.submitButtonText,
    required this.onValidCallback,
  }) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    widget.children.add(
      CustomOutlineButton(
        isYellow: true,
        text: widget.submitButtonText,
        onClick: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState?.save();
            widget.onValidCallback();
          }
        },
      ),
    );

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.children,
          ),
        ),
      ),
    );
  }
}
