import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_assets.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage(AppAssets.logoImage),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Snap Shop',
            style: AppStyles.styleMedium20(context),
          )
        ],
      ),
    );
  }
}