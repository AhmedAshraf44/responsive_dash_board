import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/item_details.dart';

import '../../../../../constants.dart';
import '../../../data/models/income_details_item_model.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          item.map((e) => ItemDetails(incomeDetailsItemModel: e)).toList(),
    );
    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: item.length,
    //   itemBuilder: (context, index) => ItemDetails(
    //     incomeDetailsItemModel: item[index],
    //   ),
    // );
  }
}
