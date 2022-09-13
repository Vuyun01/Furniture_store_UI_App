
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
    return ListTile(
      leading: Icon(icon, size: 30),
      title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 40),
    );
  }
}