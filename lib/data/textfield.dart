import 'package:flutter/material.dart';


//* Textfield 
class NewTextfield extends StatelessWidget{
  final controller_; // Used to accsess what the user typed in the text field
  final String hintText; 
  final bool obscureText; // Hides input used for passwords
  const NewTextfield({super.key, 
  required this.controller_,
  required this.hintText, 
  required this.obscureText}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0), 
                child: TextField(
                  controller: controller_,
                  obscureText: obscureText, 
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    fillColor: Colors.white12,
                    filled: true,
                    hintText: hintText, 
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              );
  }
}