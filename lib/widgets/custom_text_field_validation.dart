import 'package:flutter/material.dart';

class CustomTextFieldValidator extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final List<Widget> children;

  const CustomTextFieldValidator({
    super.key,
    required this.formKey,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}