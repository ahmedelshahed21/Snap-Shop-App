import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';


void customSnackBar(BuildContext context, String message,
    {IconData? icon, Color? iconColor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.black.withOpacity(0.7),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      duration: const Duration(seconds: 3),
      content: FittedBox(

        child: Text(message,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: AppColors.kBorderColor)),
      )));
}
