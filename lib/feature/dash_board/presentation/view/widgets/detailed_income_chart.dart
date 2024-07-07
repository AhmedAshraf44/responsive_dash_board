import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';

import '../../../../../constants.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});
  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return AspectRatio(
        aspectRatio: width >= 1373 ? 1 / 1 : 3 / 1.41,
        child: PieChart(gatPieChartData));
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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.6 : null,
            title: activeIndex == 0 ? 'Design service' : null,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 0 ? kPrimaryColor : kWhiteColor),
            radius: activeIndex == 0 ? 45 : 40,
            value: 40,
            color: kNumberTextColor,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
            title: activeIndex == 1 ? 'Design product' : null,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 1 ? kPrimaryColor : kWhiteColor),
            radius: activeIndex == 1 ? 45 : 40,
            value: 25,
            color: kSecondColor,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            title: activeIndex == 2 ? 'Product royalti' : null,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 2 ? kPrimaryColor : kWhiteColor),
            radius: activeIndex == 2 ? 45 : 40,
            value: 20,
            color: kPrimaryColor,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.7 : null,
            title: activeIndex == 3 ? 'Other' : null,
            titleStyle: AppStyle.styleMedium16(context).copyWith(
                color: activeIndex == 3 ? kPrimaryColor : kWhiteColor),
            radius: activeIndex == 3 ? 45 : 40,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
