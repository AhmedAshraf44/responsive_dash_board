import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: kBackgroundListTitleColor,
          ),
          child: const Icon(
            Icons.add,
            color: kSecondColor,
          ),
        ),
      ],
    );
  }
}
