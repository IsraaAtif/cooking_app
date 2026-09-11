import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FormFieldValidator<String>? validator;
  final bool isOutline;
  final Function(String)? onChanged;
  final bool isObscure;
  final Widget? suffixIcon;
  final TextEditingController? controller; 

  const CustomTextField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fontSize,
    required this.fontWeight,
    required this.isOutline,
    this.validator,
    this.onChanged,
    this.isObscure = false, 
    this.suffixIcon,
    this.controller, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure, 
      onChanged: onChanged,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: labelColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        filled: true,
        fillColor: const Color(0xfff4f4f4),
        suffixIcon: suffixIcon, 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: isOutline
              ? const BorderSide(color: Color(0xff858585))
              : BorderSide.none,
        ),
      ),
    );
  }
}