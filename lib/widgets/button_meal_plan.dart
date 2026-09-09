import 'package:flutter/material.dart';

class ButtonMealPlan extends StatelessWidget {
  const ButtonMealPlan({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 57,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(child: Text(text ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black, fontFamily: 'DMSans'),)),
    );
  }
}