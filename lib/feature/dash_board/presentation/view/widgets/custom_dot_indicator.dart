import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      duration: const Duration(milliseconds: 300),
      decoration: ShapeDecoration(
          color: isActive ? kSecondColor : const Color(0XFFE8E8E8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
