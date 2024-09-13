import 'package:flutter/material.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key, required this.title, required this.children});
  final String title;
  final Widget children;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic()?TextDirection.rtl:TextDirection.ltr,
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
        ),
        collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
        ),
        collapsedIconColor: AppColors.kBlackColor,
        iconColor: Colors.red,
        collapsedTextColor: Colors.white,
        textColor: AppColors.kBackGroundColor,
        collapsedBackgroundColor: Colors.grey.shade200,
        backgroundColor: AppColors.kBackGroundColor,
        minTileHeight: 30,
        tilePadding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 2.0),
        childrenPadding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 2.0),
        title: Text('\t $title',
          style: AppStyles.styleMedium14(context).copyWith(
            color: AppColors.kBlackColor
          )
        ),
        children: [
          children,
          const SizedBox(height: 10)
        ],
        onExpansionChanged: (bool expanded) {},
      ),
    );
  }
}