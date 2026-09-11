import 'package:flutter/material.dart';
import 'package:cooking_app/screens/validation_screen.dart';
import 'package:cooking_app/widgets/custom_button.dart';
import 'package:cooking_app/widgets/custom_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFAF5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_outlined, size: 35),
                ),
                SizedBox(height: 24),
                Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1A1A1A),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Enter your email for the verification process.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1A1A1A),
                  ),
                ),
                SizedBox(height: 8),
                CustomTextField(
                  label: 'Enter Email',
                  labelColor: Color(0xff666666),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email @';
                    }
                    return null;
                  },
                  isOutline: true,
                ),
                SizedBox(height: 450),
                CustomButton(
                  text: 'Send Code',
                  ontap: () {
                    if (loginFormKey.currentState!.validate()) {
                      print('Login OK');

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ValidationScreen(),
                        ),
                      );
                    }
                  },
                  color: Color(0xffF58700),
                  textcolor: Color(0xff1A1A1A),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
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
