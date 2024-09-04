import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/routing/app_router.dart';
import 'package:snap_shop/features/favourite_products/presentation/widgets/product_name_and_price_details.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_small_image.dart';

class FavouriteProductItem extends StatelessWidget {
  const FavouriteProductItem({super.key, required this.productsModel});
  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height * 0.22;
    var width = MediaQuery.sizeOf(context).height * 0.4;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductView, extra: productsModel);
      },
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
                width: 1.5,
                color: AppColors.kPrimaryColor,
              ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: ProductNameAndPriceDetails(productsModel: productsModel),
            ),
            Expanded(
              flex: 4,
              child: ProductSmallImage(
                image: productsModel.image,
                bottomRight: const Radius.circular(12),
                topLeft: Radius.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


