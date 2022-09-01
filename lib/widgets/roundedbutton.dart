import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, 
    required this.onPressed, 
    required this.name, 
    this.horizontal = 80, 
    this.vertical = 10,
  }) : super(key: key);
  
  final VoidCallback onPressed;
  final String name;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.orangeAccent,
        padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onPressed: onPressed,
      child: Text(name, style: TextStyle(
        fontSize: 18, 
        fontWeight: FontWeight.bold, 
        color: Colors.white, 
        letterSpacing: 2
      ),)
    );
  }
}