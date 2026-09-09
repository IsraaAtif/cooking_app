import 'dart:ui';

import 'package:cooking_app/modules/details_module.dart';
import 'package:cooking_app/widgets/button_meal_plan.dart';
import 'package:cooking_app/widgets/button_white.dart';
import 'package:cooking_app/widgets/header.dart';
import 'package:cooking_app/widgets/preview_card.dart';
import 'package:cooking_app/widgets/preview_card_botton_sheet.dart';
import 'package:flutter/material.dart';

class MealSliverAppbar extends StatefulWidget {
  const MealSliverAppbar({
    super.key,
    required this.img,
    required this.title,
  });

  final String img;
  final String title;

  @override
  State<MealSliverAppbar> createState() => _MealSliverAppbarState();
}

class _MealSliverAppbarState extends State<MealSliverAppbar> {
  int select = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFAF5),
      body: Column(
        
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Color(0xffFFFAF5),
                  surfaceTintColor: Colors.transparent,
                  centerTitle: true,
                  pinned: true,
                  expandedHeight: 500,
                  collapsedHeight: 90,
            
                  flexibleSpace: FlexibleSpaceBar(
                    background: PreviewCard(
                      img: widget.img,
                      title: widget.title,
                    ),
                  ),
            
                  leadingWidth: 80,
                  toolbarHeight: 70,

                  actions: [
                    Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 10
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(81, 0, 0, 0),
                            blurRadius: 6,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          buttomSheet(context);
                        },
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),],
            
                  leading: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(81, 0, 0, 0),
                            blurRadius: 6,
                            spreadRadius: 1,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
            
                Header(onSelectionChanged: (int selection) { 
                  setState(() {
                    select = selection;
                  });
                 },),
            
                SliverList.separated(
                  itemCount: select == 1? DetailsModule.cookware.length : select == 2 ? DetailsModule.ingredient.length : DetailsModule.instructions.length,
                  itemBuilder: (context, index) {
                    return select == 1? DetailsModule.cookware[index] : select == 2 ? DetailsModule.ingredient[index] : DetailsModule.instructions[index];
                  },
                  separatorBuilder: (context, index) {
                    return  select == 3?
                    Divider(color:  Color.fromARGB(0, 204, 204, 204),):
                    Divider(color:  Color(0xffCCCCCC),);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 150,height: 50,child: ButtonWhite(text: "Cooked")),
                  SizedBox(width: 10,),
                  Expanded(child: SizedBox(width: 150,height: 50,child: ButtonMealPlan(text: "Start Cooking"))),
              
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

