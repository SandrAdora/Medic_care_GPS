import 'package:flutter/material.dart';


class TextFieldForNames extends StatefulWidget {
  const TextFieldForNames({super.key});

  @override 
  State<TextFieldForNames> createState() => _TextfieldNamesState();

}

class _TextfieldNamesState extends State<TextFieldForNames>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  @override 
  Widget build(BuildContext context) => Center (
    child: ListView(  
      padding: EdgeInsets.all(32), 
      children: [
        buildTextField(), 
        const SizedBox(height: 24),
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
    )

  );
  
  // Crete the Textfields 
  Widget buildTextField() => TextField(
    
    decoration: InputDecoration( 
      hintText: 'Max Mustermann',
      labelText: 'Full name',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    

    textInputAction: TextInputAction.done,

  );

}

