import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground),
            ),
            color: kSecondColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: AppStyle.styleRegular16.copyWith(color: kWhiteColor),
              ),
              subtitle: const Text('Syah Bandi', style: AppStyle.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyle.styleSemiBold24.copyWith(color: kWhiteColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16.copyWith(color: kWhiteColor),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
