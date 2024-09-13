import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/config/routing/app_router.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/presentation/widgets/custom_drawer_header.dart';
import 'package:snap_shop/features/home/presentation/widgets/drawer_card.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.kBorderColor,
          borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.sizeOf(context).width * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomDrawerHeader(),
          const Spacer(flex: 3),
          DrawerCard(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kFavouriteProductsView);
            },
            title: S.of(context).favouriteProducts,
            icon: FontAwesomeIcons.heart,
          ),
          const SizedBox(height: 16),
          DrawerCard(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kChangeLanguageView);
            },
            title: S.of(context).changeLanguage,
            icon: Icons.language,
          ),
          const SizedBox(height: 16),
          DrawerCard(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kContactUsView);
            },
            title: S.of(context).contactUs,
            icon: Icons.phone,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}




