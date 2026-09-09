import 'package:cooking_app/widgets/category_text.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.list, required this.txt});
  final List<Widget> list;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              CategoryText(txt: txt),
            SizedBox(height: 10,),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                 itemBuilder: ((context,index){
                  return list[index];
                }),
                 separatorBuilder: (context,index){
                  return SizedBox(width: 10,);
                 },
                 itemCount: list.length),
              ),
            
    ]);

  }
}