import 'custom_text_form_field.dart';
import 'package:flutter/material.dart';

/**
 * 
 * THIS FORM IS UNUSED!
 * 
 * IT WAS MEANT TO BE USED WITH AUTHENTICATION SCREENS!
 * 
 * DON'T USE!
 * 
 */
class FormCustom extends StatefulWidget {
  FormCustom({Key? key}) : super(key: key);

  @override
  State<FormCustom> createState() => _FormCustomState();
}

class _FormCustomState extends State<FormCustom> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text";
                      }

                      return null;
                    },
                  ),
                  CustomTextFormField(
                    isValid: (String value) {
                      return value.length >= 4;
                    },
                    invalidErrorMessage:
                        "Password should be at least 4 characters long",
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            )));
  }
}
