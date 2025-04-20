import 'package:flutter/material.dart';


//* Creating a Setting icon in the homescreen 
class MenuItem{
  final String text; // Name of the Icon
  final IconData icon; // Type of Icon 

// Initialize Constructur
  const MenuItem({
    required this.text, 
    required this.icon,
  });  
}