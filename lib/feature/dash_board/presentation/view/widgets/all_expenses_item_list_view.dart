import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/all_expenses_item.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/all_expenses_item_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  List<AllExpensesItemModel> item = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int isSelectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: index == 1
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      isSelect: isSelectIndex == index,
                      item: value,
                    ),
                  )
                : AllExpensesItem(
                    isSelect: isSelectIndex == index,
                    item: value,
                  ),
          ),
        );
      }).toList(),
    );
    //2- slove
    // Row(
    //   children: item
    //       .map((e) => Expanded(
    //               child: AllExpensesItem(
    //             item: e,
    //           )))
    //       .toList(),
    // ),

    //1- slove
    // Row(
    //   children: [
    //     Expanded(
    //       child: AllExpensesItem(
    //         item: AllExpensesItemModel(
    //             image: Assets.imagesIncome,
    //             title: 'Income',
    //             date: 'April 2022',
    //             price: r'$20,129'),
    //       ),
    //     ),

    //   ],
    // ),;
  }

  void updateIndex(int index) {
    setState(() {
      isSelectIndex = index;
    });
  }
}
