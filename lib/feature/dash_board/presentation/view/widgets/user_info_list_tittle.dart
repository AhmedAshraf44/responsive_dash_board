import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.image, required this.title, required this.subtitle});
 final String image ,title ,subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackgroundListTitleColor,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyle.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyle.styleRegular12),
      ),
    );
  }
}