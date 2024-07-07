import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_title_text_feild.dart';

import '../../../../../constants.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFeild(
                hit: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextFeild(
                hit: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFeild(
                hit: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextFeild(
                hit: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButon(
                backgroundColor: Colors.transparent,
                tittle: 'Add more details',
                textColor: kSecondColor,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButon(
                tittle: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomButon extends StatelessWidget {
  const CustomButon(
      {super.key, this.backgroundColor, this.textColor, required this.tittle});
  final Color? backgroundColor, textColor;
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor ?? kSecondColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            tittle,
            style: AppStyle.styleSemiBold18(context).copyWith(color: textColor),
          )),
    );
  }
}
