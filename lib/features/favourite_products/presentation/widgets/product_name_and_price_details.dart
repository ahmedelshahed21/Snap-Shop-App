import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/price_details_section.dart';

class ProductNameAndPriceDetails extends StatelessWidget {
  const ProductNameAndPriceDetails({
    super.key,
    required this.productsModel,
  });

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.kGreyColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productsModel.title,
              style: AppStyles.styleMedium14(context).copyWith(
              ),
            ),
            const Divider(
              height: 0.5,
              color: AppColors.kPriceColor,
              thickness: 1.2,
              endIndent: 8,
            ),
            PriceDetailsSection(
              price: '${AppStrings.currency} ${(productsModel.price - (productsModel.price * productsModel.discountPercentage / 100)).toStringAsFixed(2)}',
              priceBeforeDiscount: '${productsModel.price} ${AppStrings.currency}',
              discountPercentage: '${productsModel.discountPercentage} %',
            ),
          ],
        ),
      ),
    );
  }
}