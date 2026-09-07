import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:recipe_and_cooking_app/widget/custom_button.dart';
import 'package:recipe_and_cooking_app/widget/custom_rest_success.dart';
import 'package:recipe_and_cooking_app/widget/custom_text_field.dart';
import 'package:recipe_and_cooking_app/widget/custom_text_field_validation.dart';

class RestPasswordScreen extends StatefulWidget {
  RestPasswordScreen({super.key});

  @override
  State<RestPasswordScreen> createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
  final loginFormKey = GlobalKey<FormState>();
  String password = '';

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
                'Rest Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1A1A),
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Set the new password for your account.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff666666),
                ),
              ),
              SizedBox(height: 32),
              CustomTextFieldValidator(
                formKey: loginFormKey,
                children: [
                  CustomTextField(
                    label: 'Password',
                    labelColor: Color(0xff677294),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,

                    onChanged: (value) {
                      password = value;
                    },

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }

                      if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return 'Password must contain at least one special character';
                      }

                      if (!value.contains(RegExp(r'[A-Z]'))) {
                        return 'Password must contain at least one uppercase letter';
                      }

                      if (!value.contains(RegExp(r'[0-9]'))) {
                        return 'Password must contain at least one number';
                      }

                      if (value.length < 10) {
                        return 'Password must be at least 10 characters';
                      }

                      return null;
                    },

                    isOutline: true,
                  ),

                  SizedBox(height: 15),

                  CustomTextField(
                    label: 'Re-enter Password',
                    labelColor: Color(0xff677294),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please re-enter your password';
                      }

                      if (value != password) {
                        return 'Passwords do not match';
                      }

                      return null;
                    },

                    isOutline: true,
                  ),

                  SizedBox(height: 380),
                  CustomButton(
                    text: 'Set a New Password',
                    ontap: () {
                      if (loginFormKey.currentState!.validate())
                        print('Login OK');
                      showGeneralDialog(
                        context: context,
                        barrierDismissible: false,
                        barrierLabel: 'Success',
                        barrierColor: Colors.transparent,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Center(child: CustomRestSuccess()),
                          );
                        },
                      );
                    },
                    color: const Color(0xffF58700),
                    textcolor: const Color(0xff1A1A1A),
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
