import 'package:flutter/material.dart';
import 'package:recipe_and_cooking_app/models/slider_model.dart';
import 'package:recipe_and_cooking_app/screens/welcome_slider2.dart';
import 'package:recipe_and_cooking_app/widget/custom_button.dart';
import 'package:recipe_and_cooking_app/widget/custom_welcome_slider.dart';

class WelcomSlider1 extends StatelessWidget {
  const WelcomSlider1({super.key});

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
                  currentIndex: 0,
                  slider: SliderModel(
                    image: 'assets/images/S1.png',
                    title: 'Personalized meal planning',
                    description:
                        'Pick your week\'s meals in minutes. With over 200 personalization options, eat exactly how you want to eat.',
                  ).sliders[0],
                ),

                CustomButton(
                  text: 'Continue',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const WelcomSlider2(currentIndex: 1),
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
