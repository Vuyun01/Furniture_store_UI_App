import 'package:flutter/material.dart';
import 'package:furniture_ui_app/constants.dart';

class SectionName extends StatelessWidget {
  const SectionName({
    Key? key,
    required this.name,
    this.size = 20
  }) : super(key: key);


  final String name;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: kDefaultPadding*2),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: size)
        
      ),
    );
  }
}