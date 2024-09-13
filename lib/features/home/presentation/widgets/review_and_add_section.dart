import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';




class ReviewAndAddSection extends StatelessWidget {
  const ReviewAndAddSection({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Review ($rating)',
                style:
                    AppStyles.styleMedium13(context).copyWith(fontSize: 12),
              ),
              const Icon(
                Icons.star_rate_rounded,
                color: Colors.yellow,
                size: 22,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const ShapeDecoration(
                color: AppColors.kPrimaryColor, shape: OvalBorder()),
            child: const Icon(
              FontAwesomeIcons.plus,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
