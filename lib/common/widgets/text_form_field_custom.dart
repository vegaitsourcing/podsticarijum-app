import 'dart:ffi';

import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String emptyErrorMessage;
  final String invalidErrorMessage;
  final bool Function(String value) isValid;
  final double? width;
  final String hint;
  final String? labelText;
  final bool largeInputField;

  const TextFormFieldCustom({
    this.isValid = _foo,
    this.invalidErrorMessage = "",
    this.emptyErrorMessage = "*Required",
    this.width = null,
    this.hint = "hint",
    this.labelText = null,
    this.largeInputField = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelText != null
              ? Text(
                  labelText!,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              : Text(
                  "",
                ),
          Container(
            child: TextFormField(
                minLines: largeInputField ? 5 : 1,
                maxLines: largeInputField ? 7 : 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  hintText: hint,
                  hintStyle: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                    ),
                validator: (value) {
                  if (value == null || value.isEmpty) return emptyErrorMessage;
                  if (!isValid(value)) return invalidErrorMessage;

                  return null;
                }),
          ),
        ],
      ),
    );
  }

  static bool _foo(String str) => true; // default placeholder
}
