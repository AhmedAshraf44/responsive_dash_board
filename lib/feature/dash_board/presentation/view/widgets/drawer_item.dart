import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/core/utils/app_style.dart';
import 'package:responsive_dash_board/feature/dash_board/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isActive});

  final DrawerItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveListTitle(item: item)
        : InActiveListTitle(item: item);
  }
}

class InActiveListTitle extends StatelessWidget {
  const InActiveListTitle({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(item.title, style: AppStyle.styleRegular16),
    );
  }
}

class ActiveListTitle extends StatelessWidget {
  const ActiveListTitle({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(item.title, style: AppStyle.styleBold16),
      trailing: Container(
        color: kSecondColor,
        width: 3.27,
      ),
    );
  }
}
