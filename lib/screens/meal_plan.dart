import 'package:cooking_app/screens/first_meal_plan.dart';
import 'package:cooking_app/screens/meal_plan_gallary.dart';
import 'package:cooking_app/widgets/button_meal_plan.dart';
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

void buttomSheet(BuildContext context){
  showModalBottomSheet(context: context, 
          builder: (BuildContext context){
            return Container(
              height: 325,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(Icons.close),
                                ),
                            ],
                        ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
                    child: Column(
                      children: [
                        Text("Build your first meal plan",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,fontFamily: 'DMSans',color: Color(0xff1A1A1A)),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Add a few recipes to cook this week, and we'll build you an easy-to-shop grocery list.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'DMSans',color: Color(0xff666666)),),
                        ),
                        SizedBox(height: 25,),
                  
                        GestureDetector(
                          child: ButtonMealPlan(text: "Got It!"),
                          onTap: () => Navigator.pop(context),
                          ),
                    
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
}