import 'package:flutter/material.dart';
import 'package:medic_care_gps/models/menu_item.dart';


//* Initializing Icons
class MenuItems{  
  //* List of Items to choose from 
  static const List<MenuItem> itemsFirst = [
    itemSettings, 
    itemDelete,
  ];
  static const List<MenuItem> itemSecond = [
    itemSignOut,
  ];

  //* settings
  static const itemSettings = MenuItem(
    text: 'Setting', 
    icon: Icons.settings, 
    );

  //* delete input 
  static const itemDelete = MenuItem(
    text: 'Reset',
    icon: Icons.cancel,
  );

//* Sign Out
  static const itemSignOut = MenuItem(
    text: 'Sign Out', 
    icon: Icons.logout, 
  );
}