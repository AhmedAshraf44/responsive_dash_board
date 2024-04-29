import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/models_view/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/drawer_item.dart';

import '../../../../../core/utils/app_images.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> item = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                 setState(() {
                activeIndex = index;
              });
              }
            },
            child: DrawerItem(
              item: item[index],
              isActive: activeIndex == index ? true : false,
            ),
          ),
        );
      },
    );
  }
}
