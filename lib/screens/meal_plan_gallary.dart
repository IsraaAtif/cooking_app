import 'package:cooking_app/modules/card_model.dart';
import 'package:cooking_app/screens/food_card.dart';
import 'package:cooking_app/widgets/food_list.dart';
import 'package:flutter/material.dart';

class MealPlanGallary extends StatelessWidget {
  const MealPlanGallary({super.key});

  static const List<Widget> popular = [
    FoodCard(model: CardModel(txt: "Brussels Sprouts, Mashed Potato & Sausage Bowl with...",img: "assets/images/1.png")),
    FoodCard(model: CardModel(txt: "Roasted Cauliflower & Black Bean Burrito Bowl with Cilantro Li...",img: "assets/images/2.png")),
    FoodCard(model: CardModel(txt: "Creamy Cashew Zucchini Noodles with Vegan Sausage, Arti....",img: "assets/images/3.jpeg")),
    ];

  static const List<Widget> recently = [
    FoodCard(model: CardModel(txt: "Indian Butter Chicken with Basmati Rice (Chicken Makhan...",img: "assets/images/4.png")),
    FoodCard(model: CardModel(txt: "Greek Salad with Feta Cheese & Kalamata Olives (Greek Deligh...",img: "assets/images/5.png")),
    FoodCard(model: CardModel(txt: "Italian Pasta with Tomato & Basil (Pasta Pomodoro) and Garlic ",img: "assets/images/6.png")),
    ];

  static const List<Widget> recommended = [
    FoodCard(model: CardModel(txt: "Creamy Tuscan Chicken",img: "assets/images/7.png")),
    FoodCard(model: CardModel(txt: "Classic Beef Lasagna",img: "assets/images/8.png")),
    FoodCard(model: CardModel(txt: "Honey Garlic Salmon",img: "assets/images/9.jpg")),
    ];

  static const List<Widget> scrollableLists = [
    FoodList(list: popular, txt: "Most Popular"),
    FoodList(list: recently, txt: "Recently Created"),
    FoodList(list: recommended, txt: "Recommended Plan"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFAF5),
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 15),
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xffFFFAF5),
        leading: Icon(Icons.close,size: 32,),
        actions: [
          Icon(Icons.search,size: 36,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Build a meal plan",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color(0xff1A1A1A),fontFamily: 'DMSans'),),
            SizedBox(height: 15,),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.separated(
                  itemBuilder: ((context,index){
                    return scrollableLists[index];
                  }), 
                  separatorBuilder: (context,index) => SizedBox(height: 25,), 
                  itemCount: scrollableLists.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}