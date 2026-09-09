import 'package:cooking_app/modules/option_button_size.dart';
import 'package:cooking_app/widgets/option_button.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.onSelectionChanged});
  final void Function(int selection) onSelectionChanged;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int selection = 1;
  @override
  Widget build(BuildContext context) {
    return 
          SliverPersistentHeader(
            pinned: true,
            delegate: OptionButtonSize(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selection = 1;
                          widget.onSelectionChanged(selection);
                        });
                      },
                      child: OptionButton(
                        txt: "Cookware",
                        selected: selection,
                        myNumber: 1,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selection = 2;
                          widget.onSelectionChanged(selection);
                        });
                      },
                      child: OptionButton(
                        txt: "Ingredients",
                        selected: selection,
                        myNumber: 2,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selection = 3;
                          widget.onSelectionChanged(selection);
                        });
                      },
                      child: OptionButton(
                        txt: "Instructions",
                        selected: selection,
                        myNumber: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
    ;
  }
}