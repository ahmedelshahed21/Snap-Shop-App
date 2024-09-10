import 'package:flutter/material.dart';
import 'package:snap_shop/core/routing/app_router.dart';
import 'package:snap_shop/core/theme/app_colors.dart';

class SnapShop extends StatelessWidget {
  const SnapShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBackGroundColor,
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.kBackGroundColor,
        ),
      ),
    );
  }
}