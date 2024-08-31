import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_constants.dart';
import 'package:snap_shop/core/theme/app_colors.dart';



abstract class AppStyles {

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: AppConstants.montserratFont,
        fontWeight: FontWeight.w500,
        color: AppColors.kPrimaryColor,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: AppColors.kPriceColor,
      fontFamily: AppConstants.montserratFont,
    );
  }

  static TextStyle styleMedium13(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w500,
        color: AppColors.kPriceColor,
    );
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: AppConstants.montserratFont,
    );
  }

  static TextStyle styleMedium11(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 10),
        fontWeight: FontWeight.w500,
        color: AppColors.kDiscountColor,
        decoration: TextDecoration.lineThrough,
        decorationThickness: 1.5,
        decorationColor: AppColors.kDiscountColor,
        // fontFamily: 'Montserrat',
        );
  }

}

// scaleFactor
// responsive font size
// (min , max) font size
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double min = fontSize * .8;
  double max = fontSize * 1.2;

  return responsiveFontSize.clamp(min, max);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 370;
  } else if (width < 1300) {
    return width / 950;
  } else {
    return width / 1700;
  }
}
