import 'package:flutter/material.dart';
// import 'package:cooking_app/screens/forget_password.dart';
import 'package:cooking_app/screens/welcom_slider1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          // ForgerPasswordScreen(),
          WelcomSlider1(),
        ],
      ),
    ),
  );
}
