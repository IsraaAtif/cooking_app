import 'package:flutter/material.dart';

class CustomValidation extends StatefulWidget {
  final Function(String) onCodeChanged;
  const CustomValidation({super.key, required this.onCodeChanged});

  @override
  State<CustomValidation> createState() => _CustomValidationState();
}

class _CustomValidationState extends State<CustomValidation> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final focusNode3 = FocusNode();
  final focusNode4 = FocusNode();

  void getCode() {
    final code =
        controller1.text +
        controller2.text +
        controller3.text +
        controller4.text;
    widget.onCodeChanged(code);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            width: 55,
            child: TextField(
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xff677294)),
                ),
              ),
              controller: controller1,
              focusNode: focusNode1,
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  focusNode2.requestFocus();
                }
                getCode();
              },
            ),
          ),
          SizedBox(width: 20),
          SizedBox(
            height: 55,
            width: 55,
            child: TextField(
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xff677294)),
                ),
              ),
              controller: controller2,
              focusNode: focusNode2,
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  focusNode3.requestFocus();
                } else {
                  focusNode1.requestFocus();
                }
                getCode();
              },
            ),
          ),
          SizedBox(width: 20),
          SizedBox(
            height: 55,
            width: 55,
            child: TextField(
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xff677294)),
                ),
              ),
              controller: controller3,
              focusNode: focusNode3,
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  focusNode4.requestFocus();
                } else {
                  focusNode2.requestFocus();
                }
                getCode();
              },
            ),
          ),
          SizedBox(width: 20),
          SizedBox(
            height: 55,
            width: 55,
            child: TextField(
              decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xff677294)),
                ),
              ),
              controller: controller4,
              focusNode: focusNode4,
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.isEmpty) {
                  focusNode3.requestFocus();
                }
                getCode();
              },
            ),
          ),
        ],
      ),
    );
  }
}
