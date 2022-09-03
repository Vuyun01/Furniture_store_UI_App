
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.name, 
    required this.icon, 
    required this.onTap,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          backgroundColor: Colors.cyan.shade200,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        onPressed: onTap, 
        child: Row(
          children: [
            Icon(icon, color: Colors.white,size: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(name, style: TextStyle(
                color: Colors.white, fontSize: 20),),
            )
          ],
        )
      ),
    );
  }
}