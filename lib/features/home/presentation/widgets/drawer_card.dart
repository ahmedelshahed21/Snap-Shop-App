import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class DrawerCard extends StatelessWidget {
  const DrawerCard({
    super.key,required this.onTap, required this.icon, required this.title,
  });

  final void Function()? onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kGreyColor,
      elevation: 0,
      margin: const EdgeInsets.only(left: 6.0, right: 8.0),
      child: ListTile(
        dense: true,
        onTap: onTap,
        leading: Icon(icon,
            color: AppColors.kPrimaryColor, size: 28),
        title: Text(
          title,
          style: AppStyles.styleMedium14(context).copyWith(
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}