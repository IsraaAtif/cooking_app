import 'package:cooking_app/modules/card_model.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final CardModel model;

  const FoodCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [Container(
            height: 150,
            width: 150,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16)
              
            ),
            child: Image.asset(model.img, fit: BoxFit.cover,),
          ),
          
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusGeometry.circular(16)
              ),
              child: Icon(Icons.add,color: Colors.orange,),
            ),
          )

          ]
        ),
        SizedBox(
          height: 55,
          width: 150,
          child: Text(model.txt,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: 'DMSans'),))
      ],
    );
  }
}