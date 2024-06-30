import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/drawer_item.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/user_info_list_tittle.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveListTitle(
                  item: DrawerItemModel(
                    image: Assets.imagesSettings,
                    title: 'Setting system',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InActiveListTitle(
                  item: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
