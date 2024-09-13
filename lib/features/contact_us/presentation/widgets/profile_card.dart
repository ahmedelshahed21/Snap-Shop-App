import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key, required this.icon, required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Card(
        margin:const EdgeInsets.only(top: 24.0,right: 16.0,left: 16.0) ,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          dense: true,
          leading: Icon(icon,
            size: 28,
            color: AppColors.kPrimaryColor,
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomLeft,
            child: Text(title,
                style: AppStyles.styleMedium16(context)
            ),
          ),
        ),
      ),
    );
  }
}