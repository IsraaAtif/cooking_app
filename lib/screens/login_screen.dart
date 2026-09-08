import 'package:cooking_app/widgets/custom_button.dart';
import 'package:cooking_app/widgets/email_field.dart';
import 'package:cooking_app/widgets/password_field_with_terms.dart';
import 'package:cooking_app/widgets/validation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordObscured = true;

  void _refresh() => setState(() {});

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEmailValid = Validation.isEmailValid(_emailController.text);
    final bool isPasswordValid = Validation.isPasswordValid(_passwordController.text);
    final bool isFormValid = isEmailValid && isPasswordValid;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // 2. Email Address Field
              EmailField(
                controller: _emailController,
                onChanged: _refresh,
                isFormValid: isFormValid,
              ),
              const SizedBox(height: 16),

              PasswordFieldWithTerms(
                controller: _passwordController,
                isObscured: _isPasswordObscured,
                showTerms: false, 
                isFormValid: isFormValid,
                onChanged: _refresh,
                onToggleVisibility: () {
                  setState(() {
                    _isPasswordObscured = !_isPasswordObscured;
                  });
                },
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomButton(
                text: 'Login',
                onPressed: isFormValid ? () {} : null,
              ),
              const SizedBox(height: 20),
              CustomButton.divider(),

              const SizedBox(height: 20),
              CustomButton.google(
                text: 'Login with Google',
                onPressed: () {},
              ),

              const SizedBox(height: 12),
              CustomButton.facebook(
                text: 'Login with Facebook',
                onPressed: () {},
              ),

              const SizedBox(height: 220),  
              CustomButton(
                text: '',
                backgroundColor: Colors.transparent,
                onPressed: null,
                questionText: 'Not a member? ',
                actionText: 'Sign Up',
                onActionPressed: () {},
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}