import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';

abstract class AppStyle {
  static const TextStyle styleRegular16 = TextStyle(
      color: kPrimaryColor,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static const TextStyle styleMedium16 = TextStyle(
      color: kPrimaryColor,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static const TextStyle styleMedium20 = TextStyle(
      color: kWhiteColor,
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static const TextStyle styleSemiBold16 = TextStyle(
      color: kPrimaryColor,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static const TextStyle styleSemiBold20 = TextStyle(
      color: kPrimaryColor,
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static const TextStyle styleRegular12 = TextStyle(
      color: kItemsBackgroundColor,
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static const TextStyle styleSemiBold24 = TextStyle(
      color: kSecondColor,
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static const TextStyle styleSemiBold18 = TextStyle(
      color: kWhiteColor,
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static const TextStyle styleRegular14 = TextStyle(
      color: kItemsBackgroundColor,
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);
  static const TextStyle styleBold16 = TextStyle(
      color: kSecondColor,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
}
