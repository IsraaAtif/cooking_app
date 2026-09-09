
import 'package:flutter/material.dart';

class PasswordFieldWithTerms extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscured;
  final bool isAgreed;
  final VoidCallback onToggleVisibility;
  final ValueChanged<bool?>? onAgreementChanged;
  final VoidCallback onChanged;
  final bool showTerms;
  final bool isFormValid;

  const PasswordFieldWithTerms({
    super.key,
    required this.controller,
    required this.isObscured,
    this.isAgreed = false,
    required this.onToggleVisibility,
    this.onAgreementChanged,
    required this.onChanged,
    this.showTerms = true,
    required this.isFormValid,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: isObscured,
          onChanged: (_) => onChanged(),
          decoration: InputDecoration(
            hintText: 'Enter password',
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isFormValid ? const Color(0xFF4CAF50) : Colors.grey.shade300,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isFormValid ? const Color(0xFF4CAF50) : Colors.grey.shade300,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: isFormValid ? const Color(0xFF4CAF50) : Colors.black,
                width: 1.5,
              ),
            ),
            suffixIcon: isFormValid
                ? const Icon(
                    Icons.check_circle_outline,
                    color: Color(0xFF4CAF50),
                    size: 20,
                  )
                : IconButton(
                    icon: Icon(
                      isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: onToggleVisibility,
                  ),
          ),
        ),
        if (showTerms) ...[
          const SizedBox(height: 12),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: isAgreed,
                  activeColor: const Color(0xFFF58700),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  onChanged: onAgreementChanged,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Wrap(
                  children: [
                    const Text(
                      "I agree to Mealtime's ",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}