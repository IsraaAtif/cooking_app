

import 'package:cooking_app/widgets/button_meal_plan.dart';
import 'package:flutter/material.dart';

class FirstMealPlan extends StatelessWidget {
  final Function(int)? onNext;
  const FirstMealPlan({super.key, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFAF5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your personalized",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,fontFamily: 'DMSans'),textAlign: TextAlign.center,),
              Text("meal plan",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,fontFamily: 'DMSans'),textAlign: TextAlign.center,),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("Plan your meals for the entire week in minutes. Build your first meal plan to get started!",style: TextStyle(fontSize: 18,color: Colors.grey, fontFamily: 'DMSans'),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap: () {
                  onNext?.call(1);
                },
                child: ButtonMealPlan(text: "Build Your First Meal Plan"))
            ],
          ),
        ),
      ),
    );
  }
}