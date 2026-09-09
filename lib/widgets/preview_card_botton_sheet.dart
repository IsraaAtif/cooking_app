

import 'dart:ui';

import 'package:cooking_app/widgets/list_tile_item.dart';
import 'package:flutter/material.dart';

void buttomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withOpacity(0.15),
    builder: (BuildContext context) {
      return Stack(
        children: [
          // Blur للخلفية
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(
              color: Colors.transparent,
            ),
          ),

          // الـ Bottom Sheet
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTileItem(
                            txt: "Nutrition Facts",
                            ico: Icons.info_outline,
                          ),
                          ListTileItem(
                            txt: "Open Cooking Mode",
                            ico: Icons.timer_outlined,
                          ),
                          ListTileItem(
                            txt: "Add Notes",
                            ico: Icons.note_add_outlined,
                          ),
                          ListTileItem(
                            txt: "Share",
                            ico: Icons.share,
                          ),
                          ListTileItem(
                            txt: "Print",
                            ico: Icons.print_outlined,
                          ),
                          ListTileItem(
                            txt: "Feedback For The Chef",
                            ico: Icons.chat_outlined,
                          ),
                          ListTileItem(
                            txt: "Add To Collections",
                            ico: Icons.create_new_folder_outlined,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}