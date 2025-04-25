import 'package:flutter/material.dart';
import 'package:medic_care_gps/data/menu_items.dart';
import 'package:medic_care_gps/models/menu_item.dart';
import 'package:medic_care_gps/data/textfield.dart';
import 'package:medic_care_gps/data/sign_in_button.dart';
import 'package:medic_care_gps/data/square_title.dart';

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
}    //* White Text/icons on error
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
      home: const MyHomePage(title: 'Medic Care Mobile Application'), //* Aufruf der Klasse
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  // Animation variables: Will be defined later
  //* late: Indicates it will be defined later
  late AnimationController _controller;
  late Animation<double> _hoverAnimation;

//* Text-Field animation
  @override
  void initState() {
    // Initializes the state of the text-fields
    //* Fields will hover up and down at the center of the screen
    super.initState();
  //* AnimationController manages the animation 's timing and state
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Animation duration
      vsync: this, //* Prevents unnecessary rendering and improves perfomance
    )..repeat(reverse: true); // Loop animation back and forth

    _hoverAnimation = Tween<double>(begin: -10.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // Smooth hovering motion
      ),
    );
  }

//* Free results after using the variable _controller
  @override
  void dispose() {
  
    _controller.dispose();
    super.dispose();
  }

@override 
Widget build(BuildContext context) => Scaffold(
  appBar: AppBar(
    title: const Text('Medic Care Indoor GPS'),
    centerTitle: true,
  ),
  body: Container( //* Setting background image
    alignment: Alignment.center, 
    padding: const EdgeInsets.all(32), 
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://img.freepik.com/fotos-premium/corazon-rojo-latidos-cardiacos-o-frecuencia-cardiaca-estetoscopio-sobre-fondo-madera-azul-espacio-copia-atencion-medica-sanitaria_73899-5134.jpg'),
        fit: BoxFit.cover,
      )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' Welcome to Medic Care GPS Mobile'),
            AnimatedBuilder(
              animation: _hoverAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _hoverAnimation.value), // Vertical hover effect
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "patient's credentials",
                      
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16), // Space between text fields
            AnimatedBuilder(
              animation: _hoverAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _hoverAnimation.value), // Same animation for second TextField
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "password",                     
                    ),
                  ),
                );
              },
            ),
            //* Elevated button 
            const SizedBox(height: 32),
            ElevatedButton(
            onPressed: (){
              print('Button pressed!');
              }, 
            style: OutlinedButton.styleFrom(
              // change button background color
              backgroundColor:  Color.fromARGB(255, 71, 120, 226),
              
            ), 
            child: const Text('Submit'),  ),
          ],
        ),
      )
      )
      );
}  