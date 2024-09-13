import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class AvailabilityStatusSection extends StatelessWidget {
  const AvailabilityStatusSection({
    super.key,
    required this.availabilityStatus,
    required this.stock,
  });

  final String availabilityStatus;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(availabilityStatus,
          style: AppStyles.styleMedium12(context).copyWith(
              fontSize: 14,
              color: availabilityStatus=='In Stock'?Colors.green:Colors.red
          ),
        ),
        const SizedBox(width: 5),
        Text('( $stock )',
          style: AppStyles.styleMedium12(context).copyWith(
              fontSize: 14,
              fontFamily: null,
              color: AppColors.kPrimaryColor
          ),
        )
      ],
    );
  }
}