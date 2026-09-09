
import 'package:flutter/material.dart';

class OptionButtonSize extends SliverPersistentHeaderDelegate {
  final Widget child;

  OptionButtonSize({required this.child});

  @override
  double get minExtent => 70;

  @override
  double get maxExtent => 70;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: const Color(0xffFFFAF5),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant OptionButtonSize oldDelegate) {
    return true;
  }
}