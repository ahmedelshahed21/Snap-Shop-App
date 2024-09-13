import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          color: AppColors.kGreyColor,
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        description,
        style: AppStyles.styleMedium12(context).copyWith(color: AppColors.kPriceColor),
      ),
    );
  }
}