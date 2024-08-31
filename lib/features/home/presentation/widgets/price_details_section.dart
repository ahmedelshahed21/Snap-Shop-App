import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_constants.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class PriceDetailsSection extends StatelessWidget {
  const PriceDetailsSection({
    super.key,
    required this.price,
    required this.priceBeforeDiscount,
    required this.discountPercentage,
  });
  final String price;
  final String priceBeforeDiscount;
  final String discountPercentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                priceBeforeDiscount,
                style: AppStyles.styleMedium11(context).copyWith(
                  fontSize: 12,
                  fontFamily: AppConstants.montserratFont
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: AppStyles.styleMedium14(context).copyWith(
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)
              ),
              color: Colors.blueAccent
          ),
          child: Text(discountPercentage,
            style: AppStyles.styleMedium14(context).copyWith(
              fontSize: 11,
                color: AppColors.kBackGroundColor,
            ),
          ),
        ),
      ],
    );
  }
}