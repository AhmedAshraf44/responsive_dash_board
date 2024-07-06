import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/my_card_section.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: kAlternateBackgroundColor,
        ),
        TransactionHistory(),
      ],
    ));
  }
}
