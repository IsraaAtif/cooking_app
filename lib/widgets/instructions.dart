import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({
    super.key,
    required this.number,
    required this.title,
    required this.details,
  });

  final String number;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff999999),
              fontFamily: 'DMSans',
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1A1A1A),
                    fontFamily: 'DMSans',
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  details,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff999999),
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