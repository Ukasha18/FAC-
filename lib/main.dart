
import 'package:FAC/screens/Parent%20View/parent_homepage.dart';
import 'package:FAC/screens/homepage.dart';
import 'package:FAC/screens/login.dart';
import 'package:FAC/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:SignupPage(),
    );
  }
}