import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String emptyErrorMessage;
  final String invalidErrorMessage;
  final bool Function(String sth) isValid;

  const TextFormFieldCustom(
      @required this.isValid, @required this.invalidErrorMessage,
      {this.emptyErrorMessage = "*Required", super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(validator: (value) {
      if (value == null || value.isEmpty) return emptyErrorMessage;
      if (!isValid(value)) return invalidErrorMessage;

      return null;
    });
  }
}
