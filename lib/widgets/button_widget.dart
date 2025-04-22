import 'package:flutter/material.dart';
import 'textfield_general.dart'; // Import the TextFieldForNames widget

class TextFieldWithButton extends StatefulWidget {
  const TextFieldWithButton({super.key});

  @override
  State<TextFieldWithButton> createState() => _TextFieldWithButtonState();
}

class _TextFieldWithButtonState extends State<TextFieldWithButton> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Use the TextFieldForNames widget
          const TextFieldForNames(),
          const SizedBox(height: 20), // Add spacing between text field and button
          ElevatedButton(
            onPressed: () {
              // Validate the form and proceed
              if (_formKey.currentState?.validate() ?? false) {
                print("Form is valid. Proceeding...");
              } else {
                print("Form is invalid.");
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
