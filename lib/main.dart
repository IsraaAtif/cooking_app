import 'package:flutter/material.dart';
import 'screens/select_diet_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        fontFamily: 'DM Sans',
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      home: const SelectDietScreen(),
    );
  }
}