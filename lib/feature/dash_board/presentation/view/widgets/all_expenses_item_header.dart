import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.background,
      this.color,
      this.colorIcon});

  final String image;
  final Color? background, color, colorIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: background ?? kBackgroundListTitleColor,
                ),
                child: Center(
                    child: SvgPicture.asset(
                  image,
                  colorFilter:
                      ColorFilter.mode(color ?? kSecondColor, BlendMode.srcIn),
                )),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorIcon ?? kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
