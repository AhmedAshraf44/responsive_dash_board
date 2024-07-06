import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_chart.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_header.dart';

import '../../../../../constants.dart';
import '../../../data/models/income_details_item_model.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsItemModel> item = [
    IncomeDetailsItemModel(
        title: 'Design service', value: '40%', color: kNumberTextColor),
    IncomeDetailsItemModel(
        title: 'Design product', value: '25%%', color: kSecondColor),
    IncomeDetailsItemModel(
        title: 'Product royalti', value: '20%', color: kPrimaryColor),
    IncomeDetailsItemModel(
        title: 'Other', value: '22%', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: item.length,
      itemBuilder: (context, index) => ItemDetails(
        incomeDetailsItemModel: item[index],
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: incomeDetailsItemModel.color),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyle.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsItemModel.value,
        style: AppStyle.styleMedium16,
      ),
    );
  }
}
