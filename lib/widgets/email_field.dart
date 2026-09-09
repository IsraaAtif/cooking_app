

import 'package:cooking_app/widgets/validation.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onChanged;
  final bool isFormValid;

  const EmailField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.isFormValid,
  });

  @override
  Widget build(BuildContext context) {
    final String text = controller.text.trim();
    final bool isNotEmpty = text.isNotEmpty;
    final bool isEmailValid = Validation.isEmailValid(text);
    final bool isError = isNotEmpty && !isEmailValid;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email Address',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          onChanged: (_) => onChanged(),
          decoration: InputDecoration(
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isError
                    ? Colors.red
                    : (isFormValid ? const Color(0xFF4CAF50) : Colors.grey.shade300),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isError
                    ? Colors.red
                    : (isFormValid ? const Color(0xFF4CAF50) : Colors.grey.shade300),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isError
                    ? Colors.red
                    : (isFormValid ? const Color(0xFF4CAF50) : Colors.black),
                width: 1.5,
              ),
            ),
            suffixIcon: isError
                ? const Icon(Icons.error_outline, color: Colors.red, size: 20)
                : (isFormValid
                    ? const Icon(Icons.check_circle_outline, color: Color(0xFF4CAF50), size: 20)
                    : null),
          ),
        ),
      ],
    );
  }
}