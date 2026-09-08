

import 'package:cooking_app/screens/login_screen.dart';
import 'package:cooking_app/screens/sign_up_screen.dart';
import 'package:cooking_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CookingApp extends StatelessWidget {
  const CookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: LoginScreen(),   
    );
  }
}