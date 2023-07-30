import 'package:flutter/material.dart';
import 'package:hallo_helper/screens/home_page.dart';
import 'package:hallo_helper/screens/jobapply.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context) => OnboardingScreen(),
        "apply":(context) => apply(),
      },
     
      home: OnboardingScreen()
    );
  }
}

