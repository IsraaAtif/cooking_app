import 'package:flutter/material.dart';

class StepProgressIndicator extends StatelessWidget {
  final int currentStep;

  const StepProgressIndicator({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Expanded(
          child: Container(
            height: 12,
            margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
            decoration: BoxDecoration(
              color: index < currentStep ? const Color(0xFF33995B) : const Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        );
      }),
    );
  }
}