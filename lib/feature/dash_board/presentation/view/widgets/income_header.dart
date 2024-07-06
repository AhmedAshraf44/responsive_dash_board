import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_dropdown_button.dart';

import '../../../../../core/utils/app_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyle.styleSemiBold20,
        ),
        CustomDropdownButton(),
      ],
    );
  }
}
