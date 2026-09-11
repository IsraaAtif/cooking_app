import 'package:flutter/material.dart';
import 'package:cooking_app/models/slider_model.dart';
import 'package:cooking_app/screens/welcome_slider3.dart';
import 'package:cooking_app/widgets/custom_button.dart';
import 'package:cooking_app/widgets/custom_welcome_slider.dart';

class WelcomSlider2 extends StatelessWidget {
  final int currentIndex;
  const WelcomSlider2({super.key, this.currentIndex = 1}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFAF5),
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
                  icon: const Icon(Icons.arrow_back_outlined, size: 25),
                ),
                const SizedBox(height: 20),
                CustomWelcomeSlider(
                  slider: SliderModel(
                    image: 'assets/images/S2.png',
                    title: 'Simple, stress-free grocery shopping',
                    description:
                        'Grocery shop once per week with an organized "done for you" shopping list.',
                  ),
                  currentIndex: currentIndex,
                ),
                const SizedBox(height: 20),
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
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text(
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
