

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color textColor;
  final double height;
  final String? questionText;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.height = 52.0,
    this.questionText,
    this.actionText,
    this.onActionPressed,
  });


  factory CustomButton.divider({Key? key}) {
    return _CustomButtonDivider(key: key) as CustomButton;
  }

  factory CustomButton.google({
    Key? key,
    String text = 'Sign Up with Google',
    required VoidCallback onPressed,
  }) {
    return _SocialButton(
      key: key,
      text: text,
      iconPath: 'assets/images/google.png', 
      onPressed: onPressed,
    ) as CustomButton;
  }

  factory CustomButton.facebook({
    Key? key,
    String text = 'Sign Up with Facebook',
    required VoidCallback onPressed,
  }) {
    return _SocialButton(
      key: key,
      text: text,
      iconPath: 'assets/images/facebook.png',
      backgroundColor: const Color(0xFF1877F2),
      textColor: Colors.white,
      onPressed: onPressed,
    ) as CustomButton;
  }
  @override
  Widget build(BuildContext context) {
    if (questionText != null && actionText != null) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questionText!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            GestureDetector(
              onTap: onActionPressed,
              child: Text(
                actionText!,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black, 
                  decorationThickness: 1.5,       
                ),
              ),
            ),
          ],
        ),
      );
    }
    final Color effectiveBackgroundColor = backgroundColor ??
        (onPressed != null ? const Color(0xFFF58700) : const Color(0xFFE0E0E0));

    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: effectiveBackgroundColor,
          disabledBackgroundColor: const Color(0xFFE0E0E0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _CustomButtonDivider extends CustomButton {
  const _CustomButtonDivider({super.key}) : super(text: '');

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFE5E5E5), thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Or',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        Expanded(child: Divider(color: Color(0xFFE5E5E5), thickness: 1)),
      ],
    );
  }
}

class _SocialButton extends CustomButton {
  final String iconPath;

  const _SocialButton({
    super.key,
    required super.text,
    required this.iconPath,
    super.backgroundColor = Colors.white,
    super.textColor = Colors.black,
    required super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: backgroundColor == Colors.white
              ? const BorderSide(color: Color(0xFFE5E5E5))
              : BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 20,
              width: 20,
              errorBuilder: (context, error, stackTrace) => Icon(
                iconPath.contains('facebook')
                    ? Icons.facebook
                    : Icons.g_mobiledata,
                color: textColor,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}