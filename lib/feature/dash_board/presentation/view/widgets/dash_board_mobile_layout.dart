import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_section.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/my_card_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
