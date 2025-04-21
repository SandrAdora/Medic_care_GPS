import 'package:flutter/material.dart';
import 'package:medic_care_gps/data/menu_items.dart';
import 'package:medic_care_gps/models/menu_item.dart';

class MedicareGPS extends StatelessWidget{

  // initialize the constructor
  const MedicareGPS({super.key});
  // Over write funtion from super class
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medic Care Mobile Application',
      theme: ThemeData(

        colorScheme: ColorScheme(
          brightness: Brightness.light,  //* Brightness 
          primary: const Color.fromARGB(255, 123, 194, 164), //* Soothing green
          onPrimary: Colors.white, //*  white text/icon on primary elements
          secondary: const Color(0xff1e90ff), //* soft blue
          onSecondary: Colors.white, //* white text/icons on secondary elements
          //background: const Color(0xFFe8e8e8), //* light gray for background
          //onBackground: Color(0xff000000), //* black text/icons on backgrond
          surface: const Color(0xfff6f6f6), //* softer white for surfaces/cards
          onSurface: const Color(0xff000000), //* black text/icons on surface
          error: const Color(0xffb000020), //* default eerro color 
          onError: Colors.white,  //* White Text/icons on error
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
    actions: [
      PopupMenuButton<MenuItem>(
      itemBuilder: (context) =>[
        ...MenuItems.itemsFirst.map(buildItem).toList(),
      ],
    ),
  ],

  ),
  body: Container( //* Setting background image
    alignment: Alignment.center, 
    padding: const EdgeInsets.all(32), 
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          'https://i0.wp.com/www.aftvnews.com/wp-content/uploads/2015/04/wallpaper-material.png?w=1292&quality=100&ssl=1'
          ),
        fit: BoxFit.cover,
      )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Welcome to Medic Care GPS', 
              style: TextStyle(fontSize: 20.0),


            ),
            AnimatedBuilder(
              animation: _hoverAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _hoverAnimation.value), // Vertical hover effect
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Patient's full name",
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
              //* later a login framework will be used
              print('Button pressed!');
              }, 
            style: OutlinedButton.styleFrom(
              // change button background color
              backgroundColor:  Color.fromARGB(255, 240, 244, 11),
            ), 
            child: const Text('Submit'),
            ),
          ],
        ),
      )
      )
      );
  PopupMenuItem<MenuItem>buildItem(MenuItem item) => PopupMenuItem(
    child: Row(
      children: [
        Icon(item.icon, color: Colors.black, size: 20), 
        const SizedBox(width: 12),
        Text(item.text), 
        ],  
  ),
  );

}  
