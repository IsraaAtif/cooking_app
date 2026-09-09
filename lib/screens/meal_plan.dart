import 'dart:ui';

import 'package:cooking_app/screens/first_meal_plan.dart';
import 'package:cooking_app/screens/meal_plan_gallery.dart';
import 'package:cooking_app/widgets/button_meal_plan.dart';
import 'package:cooking_app/widgets/meal_plan_gallery_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {

  int indexScreen = 0;
  List<Widget> get mealPlanScreens => [
    FirstMealPlan(
      onNext: (int i) {
        setState(() {
          indexScreen = i;
          buttomSheet(context);
        });
      },
    ),
    MealPlanGallary()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mealPlanScreens[indexScreen],
    );
  }
}
