import 'package:flutter/material.dart';


class SquareTile extends StatelessWidget {
  final String imagePath;

  const SquareTile({
    super.key,
    required this.imagePath}); 

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 224, 222, 222)),
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey[300],
      ),
      child: Image.asset(
        imagePath,
        height: 40,)
    );
  } 
}