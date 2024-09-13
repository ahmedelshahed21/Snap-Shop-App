import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/change_language/presentation/manager/languages_cubit/languages_cubit.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).changeLanguage,
          style: AppStyles.styleMedium20(context).copyWith(
            color: AppColors.kPrimaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguageTile(
              language: 'العربية',
              flagEmoji: '🇪🇬',
              locale: Locale('ar'),
            ),
            SizedBox(height: 20),

            // English Language Option
            LanguageTile(
              language: 'English',
              flagEmoji: '🇬🇧',
              locale: Locale('en'),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String language;
  final String flagEmoji;
  final Locale locale;

  const LanguageTile({
    super.key,
    required this.language,
    required this.flagEmoji,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<LanguageCubit>().changeLanguage(locale);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueAccent.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  flagEmoji,
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 15),
                Text(
                  language,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
    );
  }
}
