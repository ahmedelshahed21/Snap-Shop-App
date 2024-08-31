import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/constants/app_assets.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/utils/app_router.dart';


class SplashView extends StatefulWidget{
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    goToHomeView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff002755),
      body: Center(
        child: CircleAvatar(
          backgroundColor: AppColors.kPriceColor,
          radius:70,
          child: CircleAvatar(
              backgroundImage: AssetImage(AppAssets.logoImage),
            radius: 64,
          ),
        ),
      ),
    );
  }

  void goToHomeView() {
    Future.delayed(
        const Duration(seconds: 3),(){
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

}