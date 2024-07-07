import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../data/models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackgroundListTitleColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyle.styleRegular16(context)
              .copyWith(color: kItemsBackgroundColor),
        ),
        trailing: Text(
          transactionHistoryModel.price,
          style: AppStyle.styleSemiBold20(context).copyWith(
            color: transactionHistoryModel.withDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
