import 'package:flutter/material.dart';

class OptionButton extends StatefulWidget {
  const OptionButton({
    super.key,
    required this.txt,
    required this.selected,
    required this.myNumber,
  });

  final String txt;
  final int selected;
  final int myNumber;

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  static const Color selectedBackColor = Color(0xffFFE4C2);
  static const Color selectedBorderColor = Color(0xffF58700);
  static const Color unselectedBackColor = Color(0xffFFFFFF);
  static const Color unselectedBorderColor = Color(0xffCCCCCC);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 120,
      decoration: BoxDecoration(
        color: widget.myNumber != widget.selected
            ? unselectedBackColor
            : selectedBackColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: widget.myNumber != widget.selected
              ? unselectedBorderColor
              : selectedBorderColor,
        ),
      ),
      child: Text(
        widget.txt,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xff1A1A1A),
          fontFamily: 'DMSans',
        ),
      ),
    );
  }
}