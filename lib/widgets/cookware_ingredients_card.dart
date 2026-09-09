
import 'package:flutter/material.dart';

class CookwareIngredientsCard extends StatefulWidget {
  const CookwareIngredientsCard({super.key, this.txt, this.quant});
  final txt;
  final quant;

  @override
  State<CookwareIngredientsCard> createState() => _CookwareIngredientsCardState();
}

class _CookwareIngredientsCardState extends State<CookwareIngredientsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(child: Text(widget.txt,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xff1A1A1A),fontFamily: 'DMSans'),)),
              Text(widget.quant,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff666666),fontFamily: 'DMSans'),),
            ],
          ),
        ),
      ],
    );
  }
}