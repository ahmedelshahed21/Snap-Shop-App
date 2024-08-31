import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/core/theme/app_styles.dart';



class PriceAndPriceBeforeDiscountSection extends StatelessWidget{
  const PriceAndPriceBeforeDiscountSection({super.key, required this.discountPercentage, required this.price});
  final double discountPercentage,price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Text('${AppStrings.currency} ${(price-(price*discountPercentage/100)).toStringAsFixed(2)}',
            style: AppStyles.styleMedium13(context),
          ),
          const Expanded(child: SizedBox(width: 10)),
          Text('${(price).toStringAsFixed(2)} ${AppStrings.currency}',
            style: AppStyles.styleMedium11(context),
          ),
          const Expanded(child: SizedBox(width: 5)),
        ],
      ),
    );
  }
}