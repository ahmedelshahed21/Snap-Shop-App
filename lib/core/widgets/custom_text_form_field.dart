import 'package:flutter/material.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/core/utils/helpers/outline_input_border.dart';





class CustomTextField extends StatelessWidget {

  final String? hintText;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? initialValue;
  const CustomTextField({
    super.key,
    this.hintText,
    this.textInputType,
    this.controller,
    this.initialValue,  this.prefixIcon,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
          keyboardType: textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorRadius: const Radius.circular(16),
          cursorHeight: 28,
          cursorWidth: 2,
          initialValue: initialValue,
          style: AppStyles.styleMedium16(context).copyWith(color: AppColors.kPriceColor),
          decoration: InputDecoration(
            counterText: '',
            contentPadding:  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
            prefixIcon: Padding(
              padding: isArabic()? const EdgeInsets.only(right: 16.0) : const EdgeInsets.only(left: 16.0),
              child: prefixIcon,
            ),
            suffixIconColor: AppColors.kPrimaryColor,
            hintText: hintText,
            hintStyle: AppStyles.styleMedium16(context).copyWith(color: AppColors.kPriceColor),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
          controller: controller,
    );
  }
}
