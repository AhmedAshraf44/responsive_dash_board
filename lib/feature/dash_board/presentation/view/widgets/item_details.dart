import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../data/models/income_details_item_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: incomeDetailsItemModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           incomeDetailsItemModel.title,
    //           style: AppStyle.styleRegular16,
    //         ),
    //         const SizedBox(
    //           width: 24,
    //         ),
    //         Text(
    //           incomeDetailsItemModel.value,
    //           style: AppStyle.styleMedium16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsItemModel.value,
        style: AppStyle.styleMedium16(context),
      ),
    );
  }
}
