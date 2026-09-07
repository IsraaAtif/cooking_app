import 'package:flutter/material.dart';
import 'package:recipe_and_cooking_app/models/slider_model.dart';
import 'package:recipe_and_cooking_app/screens/welcome_slider3.dart';
import 'package:recipe_and_cooking_app/widget/custom_button.dart';
import 'package:recipe_and_cooking_app/widget/custom_welcome_slider.dart';

class WelcomSlider2 extends StatelessWidget {
  final int currentIndex;
  const WelcomSlider2({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFAF5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_outlined, size: 25),
                ),
                const SizedBox(height: 20),
                CustomWelcomeSlider(
                  slider: SliderModel(
                    image: 'assets/images/S2.png',
                    title: 'Simple, stress-free grocery shopping',
                    description:
                        'Grocery shop once per week with an organized "done for you" shopping list.',
                  ).sliders[1],
                  currentIndex: 1,
                ),
                CustomButton(
                  text: 'Continue',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WelcomSlider3(currentIndex: 2),
                      ),
                    );
                  },
                  color: const Color(0xffF58700),
                  textcolor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1A1A1A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
