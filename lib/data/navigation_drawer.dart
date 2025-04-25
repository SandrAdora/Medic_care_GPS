import 'package:flutter/material.dart';
import 'package:medic_care_gps/screens/home_screen.dart';



class NavigationDrawer_ extends StatelessWidget {
  const NavigationDrawer_({Key? key} ) : super(key: key) ; 

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),

        ],
      ),
    ),
  );


  //* Defining the widgets 
  Widget buildHeader(BuildContext context) => Container();
  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16, // vertical spacing
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined), 
          title: const Text('Home'),
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomePage(),
              ),
              ),
      ),
        ListTile(
          leading: const Icon(Icons.cancel), 
          title: const Text('Cancel input'),
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomePage(),
              ),
              ),
          ),
      // Create a divider 
      const Divider(color: Colors.black54),
      ListTile(
        leading: const Icon(Icons.notification_add_outlined), 
        title: const Text('Notification'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.account_tree_outlined), 
        title: const Text('Plugins'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.update), 
        title: const Text('Updates'),
        onTap: () {},
      ),
    ],
  ),
);
  
}