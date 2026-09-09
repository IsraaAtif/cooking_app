import 'package:flutter/material.dart';

class ButtonWhite extends StatelessWidget {
  const ButtonWhite({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 57,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: BoxBorder.all(color: Color(0xffCCCCCC))
      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check_circle_outline,color: Color(0xff999999),),
          SizedBox(width: 12,),
          Text(text ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black, fontFamily: 'DMSans'),),
        ],
      )),
    );
  }
}