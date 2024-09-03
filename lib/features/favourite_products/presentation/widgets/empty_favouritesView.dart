import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class EmptyFavoritesView extends StatelessWidget {
  const EmptyFavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon or Illustration
            Icon(
              Icons.favorite_border,
              size: 100,
              color: AppColors.kGreyColor, // Or your primary color
            ),
            const SizedBox(height: 20),
            Text(
              "No favorites yet!",
              style: AppStyles.styleMedium14(context).copyWith(
                  color: Colors.grey.shade700,
                  fontSize: 24
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "Your favorite products will appear here.",
              style: AppStyles.styleMedium14(context).copyWith(
                color: Colors.grey.shade700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.blue, // Customize button color
              ),
              child: Text(
                "Start Shopping",
                style: AppStyles.styleMedium18(context).copyWith(color: AppColors.kPriceColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}