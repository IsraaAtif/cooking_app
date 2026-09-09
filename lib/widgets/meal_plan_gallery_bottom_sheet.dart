
import 'dart:ui';

import 'package:cooking_app/widgets/button_meal_plan.dart';
import 'package:flutter/material.dart';

void buttomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    builder: (BuildContext context) {
      return Stack(
        children: [
          // Blur للخلفية
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.05),
            ),
          ),

          // الـ Bottom Sheet
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 325,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Build your first meal plan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DMSans',
                            color: Color(0xff1A1A1A),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Text(
                            "Add a few recipes to cook this week, and we'll build you an easy-to-shop grocery list.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'DMSans',
                              color: Color(0xff666666),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: ButtonMealPlan(
                            text: "Got It!",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}