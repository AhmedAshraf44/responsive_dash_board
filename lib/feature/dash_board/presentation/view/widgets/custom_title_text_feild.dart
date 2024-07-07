import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_text_feild.dart';

import '../../../../../core/utils/app_style.dart';

class CustomTitleTextFeild extends StatelessWidget {
  const CustomTitleTextFeild(
      {super.key, required this.hit, required this.title});
  final String hit, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFeild(
          hint: hit,
        ),
      ],
    );
  }
}
