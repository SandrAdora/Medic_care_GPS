import 'package:flutter/material.dart';


class TextFieldForNames extends StatefulWidget {
  const TextFieldForNames({super.key});

  @override 
  State<TextFieldForNames> createState() => _TextfieldNamesState();

}

class _TextfieldNamesState extends State<TextFieldForNames>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  @override 
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField( 
            decoration: const InputDecoration(hintText: 'Enter full name of the patient'),
            validator:(String? value){
              if (value == null || value.isEmpty){
                return 'Please enter full name of the patient';
              }
              return null;
            },
          ),
        ]
        )
      );
  }

}

