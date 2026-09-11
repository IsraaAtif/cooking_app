import 'package:flutter/material.dart';
import 'package:cooking_app/models/slider_model.dart';
import 'package:cooking_app/screens/login_screen.dart'; 
import 'package:cooking_app/widgets/custom_button.dart';
import 'package:cooking_app/widgets/custom_welcome_slider.dart';

class WelcomSlider3 extends StatelessWidget {
  final int currentIndex;
  const WelcomSlider3({super.key, this.currentIndex = 2});

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
                    image: 'assets/images/S3.png',
                    title: 'Delicious, healthy meals made easy',
                    description:
                        'Easily cook healthy, delicious meals in about 30 minutes, from start to finish.',
                  ),
                  currentIndex: currentIndex,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Get Started', 
                  ontap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
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
