import 'package:cooking_app/screens/favorites.dart';
import 'package:cooking_app/screens/groceries.dart';
import 'package:cooking_app/screens/meal_plan.dart';
import 'package:cooking_app/screens/setting.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  
  int index = 0;
  List<Widget> screens = [MealPlan(),Groceries(),Favorites(),Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[index],


      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(

        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,

        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 24,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color(0xffB3B3B3),
        
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Meal Plan"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: "Groceries"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Setting"),
        ]
        ),
    )
    ;
  }
}