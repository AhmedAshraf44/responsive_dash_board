import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const ShapeDecoration(
        color: kWhiteColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: kAlternateBackgroundColor),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyle.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ],
      ),
    );
  }
}
