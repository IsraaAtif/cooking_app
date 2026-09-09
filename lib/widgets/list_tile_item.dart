import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.txt, required this.ico});
  final String txt;
  final IconData ico;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ico,color: Color(0xff999999),),
      title: Text(txt,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff1A1A1A),fontFamily: 'DMSans'),),
  );}
}