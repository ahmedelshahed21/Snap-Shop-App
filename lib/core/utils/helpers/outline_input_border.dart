import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';




OutlineInputBorder buildOutlineInputBorder({Color? color}) {
  return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? AppColors.kPrimaryColor,
        width: 1.5
      ),
      borderRadius: BorderRadius.circular(32)
  );
}
