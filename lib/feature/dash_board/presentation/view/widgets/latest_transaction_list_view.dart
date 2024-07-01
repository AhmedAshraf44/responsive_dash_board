import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/user_info_list_tittle.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/models/user_info_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> item = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTitle(userInfoModel: e)))
            .toList(),
      ),
    );
    // 1 - solve this problem
    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: item.length,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTitle(
    //         userInfoModel: item[index],
    //       ),
    //     ),
    //   ),
    // );
  }
}
