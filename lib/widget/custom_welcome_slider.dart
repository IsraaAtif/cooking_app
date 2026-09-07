import 'package:flutter/material.dart';
import 'package:recipe_and_cooking_app/models/slider_model.dart';

class CustomWelcomeSlider extends StatelessWidget {
  final SliderModel slider;
  final int currentIndex;

  const CustomWelcomeSlider({
    super.key,
    required this.slider,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),

        Image.asset(slider.image),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: currentIndex == 0
                    ? const Color(0xffF58700)
                    : const Color(0xffE6E6E6),
                shape: BoxShape.circle,
              ),
            ),

            const SizedBox(width: 12),

            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: currentIndex == 1
                    ? const Color(0xffF58700)
                    : const Color(0xffE6E6E6),
                shape: BoxShape.circle,
              ),
            ),

            const SizedBox(width: 12),

            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: currentIndex == 2
                    ? const Color(0xffF58700)
                    : const Color(0xffE6E6E6),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        Text(
          slider.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xff1A1A1A),
          ),
        ),

        const SizedBox(height: 12),

        Text(
          slider.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xff666666),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
