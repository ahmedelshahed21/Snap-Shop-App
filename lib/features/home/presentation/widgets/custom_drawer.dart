import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/constants/app_assets.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/core/routing/app_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.kBorderColor,
          borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.sizeOf(context).width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerHeader(
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
          )),
          const Spacer(),
          Card(
            color: AppColors.kBackGroundColor,
            elevation: 0,
            margin: const EdgeInsets.only(left: 6.0, right: 8.0),
            child: ListTile(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kFavouriteProductsView);
              },
              leading: const Icon(Icons.favorite_rounded,
                  color: AppColors.kPrimaryColor, size: 28),
              title: Text(
                'Favourite Products',
                style: AppStyles.styleMedium14(context).copyWith(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
