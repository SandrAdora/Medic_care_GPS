import 'package:flutter/material.dart';
import 'package:medic_care_gps/data/textfield.dart';
import 'package:medic_care_gps/data/sign_in_button.dart';
import 'package:medic_care_gps/data/square_title.dart';
import 'package:medic_care_gps/data/navigation_drawer.dart'; 

class MedicareGPS extends StatelessWidget{

  // initialize the constructor
  const MedicareGPS({super.key});
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

  // text editing controllers 
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  // sign user in when submit button is pressed 
  void signUserIn(){
    print('User is signed in');
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const NavigationDrawer_(),
      body: SafeArea(
        child: Center(
          child:  Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height:50),

              //logo 
              const Icon(
                Icons.local_hospital_rounded, size:100, 
              ),
              const SizedBox(height: 50),
              //Message 
              const Text(
                'Welcome to Medicare GPS Mobile', 
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // patients full name
              NewTextfield(
                controller_: usernameController,
                hintText: 'Full name of the patient',
                obscureText: false,

              ),

              const SizedBox(height: 10),
              // Password 
              NewTextfield(
                controller_: passwordController, 
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10,), 
              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              SignInButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
              // Divider for logos 
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child:  Text(
                'Continue with',
                style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5, 
                  color: Colors.grey[400],                ),
              ), 
              ],
              ),
          ),
          // Google and apploe logo 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(imagePath: 'lib/assets/images/google.jpg'),

              const SizedBox(width:10),
              SquareTile(imagePath: 'lib/assets/images/apple.jpg'),

            ],
          ),
          

            ],
      ),
        ),
      ),

    );
  }
}


