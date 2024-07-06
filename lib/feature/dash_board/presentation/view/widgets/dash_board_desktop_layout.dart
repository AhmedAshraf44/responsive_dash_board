import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/cutsom_drawer.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_section.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              MyCardAndTransactionHistorySection(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: IncomeSection()),
            ],
          ),
          //child: MyCardAndTransactionHistorySection(),
        )),
      ],
    );
  }
}
