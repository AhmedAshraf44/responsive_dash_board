import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_style.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});

  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: kBackgroundListTitleColor,
          hintStyle: AppStyle.styleRegular16(context)
              .copyWith(color: kItemsBackgroundColor),
          hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: kBackgroundListTitleColor,
        ));
  }
}
