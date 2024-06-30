import 'package:flutter/material.dart';
import '../../../data/models/all_expenses_item_model.dart';
import 'inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelect});
  final AllExpensesItemModel item;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ? ActiveAllExpensesItem(item: item)
        : InActiveAllExpensesItem(item: item);
  }
}
