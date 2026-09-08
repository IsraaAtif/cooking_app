import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({super.key,required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: Text(txt,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff1A1A1A), fontFamily: 'DMSans'),)),
        Text("See All",style: TextStyle(fontSize: 18,color: Colors.orange, fontFamily: 'DMSans',decoration: TextDecoration.underline, decorationColor: Colors.orange),),
        ],
    );
  }
}