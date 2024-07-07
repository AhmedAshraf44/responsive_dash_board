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
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: AllExpensesItem(
                isSelect: isSelectIndex == 0,
                item: item[0],
              )),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: AllExpensesItem(
                isSelect: isSelectIndex == 1,
                item: item[1],
              )),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                updateIndex(2);
              },
              child: AllExpensesItem(
                isSelect: isSelectIndex == 2,
                item: item[2],
              )),
        ),
      ],
    );
//solve responsive
    // Row(
    //   children: item.asMap().entries.map((e) {
    //     int index = e.key;
    //     var value = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //             child: AllExpensesItem(
    //               isSelect: isSelectIndex == index,
    //               item: value,
    //             ),
    //           )),
    //     );
    //   }).toList(),
    // );
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
