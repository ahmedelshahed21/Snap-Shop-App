import 'package:flutter/material.dart';
import 'package:snap_shop/app/snap_shop.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';


class ProductDataWidget extends StatelessWidget {
  const ProductDataWidget({
    super.key,
    this.name,
    required this.productData,
  });
  final String? name;
  final String productData;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name==null?const SizedBox.shrink():Text(name!,
          style: AppStyles.styleMedium12(context).copyWith(
              color: Colors.black
          ),
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          decoration: BoxDecoration(
              color: AppColors.kGreyColor,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            productData,
            textAlign: TextAlign.center,
            style: AppStyles.styleMedium14(context)
          ),
        ),
      ],
    );
  }
}