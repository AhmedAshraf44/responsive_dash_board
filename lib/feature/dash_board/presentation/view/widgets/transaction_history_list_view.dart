import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/transaction_history_item.dart';

import '../../../data/models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryModel> item = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        price: r'$20,129',
        withDrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: r'$2,000',
        withDrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        price: r'$20,129',
        withDrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: item
          .map((e) => TransactionHistoryItem(transactionHistoryModel: e))
          .toList(),
    );

    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: item.length,
    //   itemBuilder: (context, index) => TransactionHistoryItem(
    //     transactionHistoryModel: item[index],
    //   ),
    // );
  }
}
