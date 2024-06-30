import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOption(),
      ],
    );
  }
}
