import 'package:flutter/material.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/screens/home/home_screen.dart';
import 'package:furniture_ui_app/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: kTextColor,)
        )
      ),
      home: WelcomeScreen(),
    );
  }
}
