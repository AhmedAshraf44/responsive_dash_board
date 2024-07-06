import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndicator(
                  isActive: index == currentIndex,
                ),
              )),
    );
  }
}
