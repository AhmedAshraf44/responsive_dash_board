import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../data/models/all_expenses_item_model.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: kWhiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                  width: 1, color: kAlternateBackgroundColor))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: item.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            item.title,
            style: AppStyle.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            item.date,
            style: AppStyle.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(item.price, style: AppStyle.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: kSecondColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            // side: const BorderSide(
            //     width: 1, color: kAlternateBackgroundColor),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            color: kWhiteColor,
            background: kWhiteColor.withOpacity(0.10000000),
            colorIcon: kWhiteColor,
            image: item.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            item.title,
            style: AppStyle.styleSemiBold16.copyWith(color: kWhiteColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            item.date,
            style: AppStyle.styleRegular14
                .copyWith(color: kBackgroundListTitleColor),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(item.price,
              style: AppStyle.styleSemiBold24.copyWith(color: kWhiteColor)),
        ],
      ),
    );
  }
}
