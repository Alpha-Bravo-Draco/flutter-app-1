import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login.dart';
// import 'package:flutter_application_2/screens/home.dart';
// import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/login': (context) => const Login()
        // '/signup':(context) => const Signup()
      },
    );
  }
}
