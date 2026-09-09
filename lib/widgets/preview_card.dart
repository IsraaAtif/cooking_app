import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard({super.key, required this.img, required this.title});
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return 
          Container(
              color: const Color(0xffFFFAF5),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        img,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1A1A1A),
                                  fontFamily: 'DMSans',
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "35 minutes • 2 servings",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666),
                            fontFamily: 'DMSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}