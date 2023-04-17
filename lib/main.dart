
import 'package:FAC/screens/Parent%20View/parent_homepage.dart';
import 'package:FAC/screens/Parent%20View/parentschedule.dart';
import 'package:FAC/screens/homepage.dart';
import 'package:FAC/screens/login.dart';
import 'package:FAC/screens/schedule.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/signup.dart';

void main() {
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:ScreenMain(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: _initializeFirebase(),
    builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return LoginPage();
      }
      return const Center(child: CircularProgressIndicator(),
      );
    },
    ),
    );
  }
}

