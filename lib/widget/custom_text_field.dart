import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FormFieldValidator<String>? validator;
  final bool isOutline;
  final Function(String)? onChanged;
  const CustomTextField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fontSize,
    this.validator,
    required this.fontWeight,
    required this.isOutline,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        fillColor: Color(0xfff4f4f4),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff858585)),
        ),
      ),
    );
  }
}