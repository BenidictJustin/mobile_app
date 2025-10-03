import 'package:beni_app/Forgotpass.dart';

import 'Signup.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'Login.dart';
import 'Resetpass.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
        Homepage.id: (context) => Homepage(),
        ForgotPass.id: (context) => ForgotPass(),
        ResetPass.id: (context) => ResetPass(),

      },
    );
  }
}