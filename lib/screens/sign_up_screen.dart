import 'package:cooking_app/widgets/custom_button.dart';
import 'package:cooking_app/widgets/email_field.dart';
import 'package:cooking_app/widgets/full_name_field.dart';
import 'package:cooking_app/widgets/password_field_with_terms.dart';
import 'package:cooking_app/widgets/validation.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordObscured = true;
  bool _isTermsAccepted = false;

  void _refresh() {
    setState(() {});
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isNameValid = _nameController.text.trim().length >= 3;
    final bool isEmailValid = Validation.isEmailValid(_emailController.text);
    final bool isPasswordValid = Validation.isPasswordValid(_passwordController.text);

    final bool isFormValid = isNameValid && isEmailValid && isPasswordValid && _isTermsAccepted;

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
                'Sign up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              
              const SizedBox(height: 20),
              FullNameField(
                controller: _nameController,
                onChanged: _refresh,
                isFormValid: isFormValid,
              ),

              const SizedBox(height: 16),
              EmailField(
                controller: _emailController,
                onChanged: _refresh,
                isFormValid: isFormValid,
              ),

              const SizedBox(height: 16),
              PasswordFieldWithTerms(
                controller: _passwordController,
                isObscured: _isPasswordObscured,
                isAgreed: _isTermsAccepted,
                showTerms: true,
                isFormValid: isFormValid,
                onChanged: _refresh,
                onToggleVisibility: () {
                  setState(() {
                    _isPasswordObscured = !_isPasswordObscured;
                  });
                },
                onAgreementChanged: (value) {
                  setState(() {
                    _isTermsAccepted = value ?? false;
                  });
                },
              ),
              const SizedBox(height: 24),
              CustomButton(
                text: 'Create an Account',
                onPressed: isFormValid ? () {} : null,
              ),

              const SizedBox(height: 20),
              CustomButton.divider(),

              const SizedBox(height: 20),
              CustomButton.google(
                onPressed: () {},
              ),

              const SizedBox(height: 12),
              CustomButton.facebook(
                onPressed: () {},
              ),

              const SizedBox(height: 140),
              CustomButton(
                text: '',
                backgroundColor: Colors.transparent,
                onPressed: null,
                questionText: 'Already a member? ',
                actionText: 'Login',
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