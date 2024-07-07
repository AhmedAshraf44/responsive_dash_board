import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: AppStyle.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: AppStyle.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child:
                  Text(item.price, style: AppStyle.styleSemiBold24(context))),
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
            side: const BorderSide(width: 1, color: kSecondColor),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: AppStyle.styleSemiBold16(context)
                  .copyWith(color: kWhiteColor),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: kBackgroundListTitleColor),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(item.price,
                style: AppStyle.styleSemiBold24(context)
                    .copyWith(color: kWhiteColor)),
          ),
        ],
      ),
    );
  }
}
