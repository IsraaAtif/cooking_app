import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textcolor;
  final TextStyle? textStyle;
  final String? iconPath;
  final Color? backgroundColor;
  final String? questionText;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final bool _isDivider;

  const CustomButton({
    super.key,
    this.text,
    VoidCallback? onPressed,
    VoidCallback? ontap,
    Color? color,
    Color? textcolor,
    this.textStyle,
    this.iconPath,
    this.backgroundColor,
    this.questionText,
    this.actionText,
    this.onActionPressed,
  })  : this.onPressed = onPressed ?? ontap,
        this.color = color ?? backgroundColor ?? const Color(0xFFFF5800),
        this.textcolor = textcolor ?? Colors.white,
        this._isDivider = false;

  factory CustomButton.divider({Key? key, String text = 'OR'}) {
    return CustomButton._dividerInternal(key: key, text: text);
  }

  const CustomButton._dividerInternal({
    super.key,
    this.text = 'OR',
  })  : onPressed = null,
        color = Colors.transparent,
        textcolor = Colors.grey,
        textStyle = null,
        iconPath = null,
        backgroundColor = null,
        questionText = null,
        actionText = null,
        onActionPressed = null,
        _isDivider = true;

  factory CustomButton.google({
    required VoidCallback onPressed,
    String text = 'Sign Up with Google',
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      color: Colors.white,
      textcolor: Colors.black87,
      iconPath: 'assets/images/google.png',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }

  factory CustomButton.facebook({
    required VoidCallback onPressed,
    String text = 'Continue with Facebook',
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      color: const Color(0xFF1877F2),
      textcolor: Colors.white,
      iconPath: 'assets/images/facebook.png',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isDivider) {
      return Row(
        children: [
          const Expanded(child: Divider(color: Color(0xFFE0E0E0), thickness: 1)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text ?? 'OR',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Expanded(child: Divider(color: Color(0xFFE0E0E0), thickness: 1)),
        ],
      );
    }

    if (questionText != null && actionText != null) {
      return Container(
        color: backgroundColor ?? Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: GestureDetector(
            onTap: onActionPressed,
            child: RichText(
              text: TextSpan(
                text: questionText!,
                style: const TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                ),
                children: [
                  TextSpan(
                    text: actionText!,
                    style: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline, 
                      decorationColor: Color(0xFF1A1A1A), 
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textcolor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
            side: color == Colors.white
                ? const BorderSide(color: Color(0xFFE0E0E0))
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              Image.asset(
                iconPath!,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 12),
            ],
            if (text != null)
              Text(
                text!,
                style: textStyle ??
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textcolor,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}