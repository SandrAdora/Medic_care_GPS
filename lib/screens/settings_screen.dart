import 'package:flutter/material.dart';
import 'package:medic_care_gps/models/setting_icon.dart';


//* Initializing Icons
class MenuItems{

  //* settings
  static const itemSettings = MenuItem(
    text: 'Setting', 
    icon: Icons.settings, 
    );

  //* delete input 
  static const itemDelete = MenuItem(
    text: 'delete input',
    icon: Icons.delete,
  );

//* Sign Out
  static const itemSignOut = MenuItem(
    text: 'Sign Out', 
    icon: Icons.logout, 
  );
}