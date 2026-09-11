

import 'package:cooking_app/screens/bottom_nav_screen.dart';
import 'package:cooking_app/screens/first_meal_plan.dart';
import 'package:cooking_app/screens/forget_password.dart';
import 'package:cooking_app/screens/login_screen.dart';
import 'package:cooking_app/screens/meal_plan.dart';
import 'package:cooking_app/screens/meal_sliver_appbar.dart';
import 'package:cooking_app/screens/rest_password_screen.dart';
import 'package:cooking_app/screens/setting.dart';
import 'package:cooking_app/screens/sign_up_screen.dart';
import 'package:cooking_app/screens/splash_screen.dart';
import 'package:cooking_app/screens/validation_screen.dart';
import 'package:cooking_app/screens/welcom_slider1.dart';
import 'package:cooking_app/screens/welcome_slider2.dart';
import 'package:cooking_app/screens/welcome_slider3.dart';
import 'package:flutter/material.dart';

class CookingApp extends StatelessWidget {
  const CookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:LoginScreen(),   
    );
  }
}
