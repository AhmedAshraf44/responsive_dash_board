import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: kPrimaryColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(context) => TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static TextStyle styleMedium20(context) => TextStyle(
      color: kWhiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static TextStyle styleSemiBold16(context) => TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleSemiBold20(context) => TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
  static TextStyle styleRegular12(context) => TextStyle(
      color: kItemsBackgroundColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static TextStyle styleSemiBold24(context) => TextStyle(
      color: kSecondColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleSemiBold18(context) => TextStyle(
      color: kWhiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleRegular14(context) => TextStyle(
      color: kItemsBackgroundColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);
  static TextStyle styleBold16(context) => TextStyle(
      color: kSecondColor,
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
