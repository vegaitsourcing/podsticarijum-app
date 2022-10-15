import 'package:flutter/material.dart';

import 'custom_outline_button.dart';

class ScrollableForm extends StatefulWidget {
  final List<Widget> children;
  final String submitButtonText;
  final Function onValidCallback; // data contains information about

  const ScrollableForm({
    Key? key,
    required this.children,
    required this.submitButtonText,
    required this.onValidCallback,
  }) : super(key: key);

  @override
  State<ScrollableForm> createState() => _ScrollableFormState();
}

class _ScrollableFormState extends State<ScrollableForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    widget.children.add(
      CustomOutlineButton(
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
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
