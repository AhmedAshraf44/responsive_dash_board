import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/transaction_history_header.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import 'transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context)
              .copyWith(color: kItemsBackgroundColor),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
