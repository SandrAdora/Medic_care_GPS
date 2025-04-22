import 'package:flutter/material.dart';
import 'package:medic_care_gps/data/menu_items.dart';
import 'package:medic_care_gps/models/menu_item.dart';
import 'package:medic_care_gps/data/textfield.dart';

class MedicareGPS extends StatelessWidget{

  // initialize the constructor
  MedicareGPS({super.key});
  // Over write funtion from super class
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medic Care Mobile Application',
      debugShowCheckedModeBanner: false,
      home: HomePage(), //* Aufruf der Klasse
    );
  }
}

class HomePage extends StatelessWidget{
  HomePage({super.key});

  // text edigitn controllers 
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child:  Column( 
            children: const [
              const SizedBox(height:50),

              //logo 
              const Icon(
                Icons.local_hospital_rounded, size:100, 
              ),
              const SizedBox(height: 50),
              //Message 
              Text(
                'Welcome to Medicare GPS Mobile', 
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // patients full name
              NewTextfield(
                controller: usernameController,
                hintText: 'Full name of the patient',
                obscureText: false,

              ),
              const SizedBox(height: 10),
              // Password 
              NewTextfield(
                controller: passwordController, 
                hintText: 'Password',
                obscureText: true,
              ),
        


            ],
      ),
        ),
      ),

    );
  }
}


