import 'package:flutter/material.dart';


class SignInButton extends StatelessWidget{

  //* Action when button is taped 
  final Function()? onTap;
  const SignInButton({super.key, required this.onTap }); 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(
        'Submit', 
      style: TextStyle(
        color: Colors.white60,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        )
      ),
        ),
    )
    );
  
  }
}