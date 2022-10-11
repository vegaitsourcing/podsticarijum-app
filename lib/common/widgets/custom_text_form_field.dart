import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String emptyErrorMessage;
  final String invalidErrorMessage;
  final bool Function(String value) isValid;
  final double? width;
  final String hint;
  final String? labelText;
  final double padding;
  final bool largeInputField;
  final void Function(String?)? onSaved;

  const CustomTextFormField({
    this.isValid = _foo,
    this.invalidErrorMessage = "",
    this.emptyErrorMessage = "*Required",
    this.width = null,
    this.padding = 0,
    this.hint = "hint",
    this.labelText = null,
    this.largeInputField = false,
    this.onSaved = null,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText ?? "",
            style: Theme.of(context).textTheme.headlineSmall,
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
              },
              onSaved: (value) {
                if (onSaved != null) onSaved!(value);
              },
            ),
          ),
          SizedBox(
            height: padding,
          )
        ],
      ),
    );
  }

  static bool _foo(String str) => true; // default placeholder
}
