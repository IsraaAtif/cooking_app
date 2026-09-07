import 'package:flutter/material.dart';
import 'package:recipe_and_cooking_app/screens/rest_password_screen.dart';
import 'package:recipe_and_cooking_app/widget/custom_button.dart';
import 'package:recipe_and_cooking_app/widget/custom_validation.dart';

class ValidationScreen extends StatelessWidget {
  const ValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFAF5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_outlined, size: 30),
              ),
              SizedBox(height: 24),
              Text(
                'Enter 4 digit code',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1A1A),
                ),
              ),
              SizedBox(height: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter 4 digit code that your receive on your',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff666666),
                    ),
                  ),
                  Text(
                    'email (cody.fisher45@example.com)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1A1A1A),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              CustomValidation(onCodeChanged: (code) {}),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not received a code? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff666666),
                    ),
                  ),
                  Text(
                    'Resend Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1A1A1A),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 450),
              CustomButton(
                text: 'Continue',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestPasswordScreen(),
                    ),
                  );
                },
                color: Color(0xffF58700),
                textcolor: Color(0xff1A1A1A),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
