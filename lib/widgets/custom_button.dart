import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  final Color textcolor;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    required this.textcolor,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: textcolor,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 15.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: textcolor)),
      ),
    );
  }
}