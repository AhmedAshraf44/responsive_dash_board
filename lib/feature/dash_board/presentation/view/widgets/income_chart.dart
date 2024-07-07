import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({
    super.key,
  });

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(gatPieChartData));
  }

  PieChartData get gatPieChartData {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            setState(() {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 0 ? 30 : 25,
            value: 40,
            color: kNumberTextColor,
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 1 ? 30 : 25,
            value: 25,
            color: kSecondColor,
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 2 ? 30 : 25,
            value: 20,
            color: kPrimaryColor,
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 3 ? 30 : 25,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
