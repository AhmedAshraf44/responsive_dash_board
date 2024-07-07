import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1814
        ? const DetailedIncomeChart()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
