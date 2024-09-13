import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/constants/app_constants.dart';
import 'package:snap_shop/features/change_language/presentation/manager/languages_cubit/languages_cubit.dart';

class LanguageTile extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String language;
  final String flagEmoji;
  final Locale locale;

  const LanguageTile({
    super.key,
    required this.color,
    required this.textColor,
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
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                width: 2,
                color: color,
              )
          ),
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
                const SizedBox(width: 16),
                Text(
                  language,
                  style: TextStyle(
                      fontSize: 24,
                      color: textColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppConstants.arabicFont
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}