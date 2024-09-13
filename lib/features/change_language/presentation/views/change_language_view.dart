import 'package:flutter/material.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/change_language/presentation/widgets/language_tile.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).changeLanguage,
          style: AppStyles.styleMedium20(context).copyWith(color: AppColors.kPrimaryColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Spacer(),
            LanguageTile(
              color: isArabic()?AppColors.kPrimaryColor:AppColors.kBackGroundColor,
              textColor: isArabic()?AppColors.kPrimaryColor:AppColors.kBorderColor,
              language: 'العربية',
              flagEmoji: '🇪🇬',
              locale: const Locale('ar'),
            ),
            const SizedBox(height: 20),
            LanguageTile(
              color: isArabic()?AppColors.kBackGroundColor:AppColors.kPrimaryColor,
              textColor: isArabic()?AppColors.kBorderColor:AppColors.kPrimaryColor,
              language: 'English',
              flagEmoji: '🇬🇧',
              locale: const Locale('en'),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}


