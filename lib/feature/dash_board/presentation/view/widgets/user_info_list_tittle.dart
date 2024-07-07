import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';

import '../../../data/models/user_info_model.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBackgroundListTitleColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(userInfoModel.title,
                style: AppStyle.styleSemiBold16(context)),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(userInfoModel.subtitle,
                style: AppStyle.styleRegular12(context)),
          ),
        ),
      ),
    );
  }
}
