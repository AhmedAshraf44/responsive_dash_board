import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}
