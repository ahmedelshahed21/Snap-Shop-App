import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/utils/app_router.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/price_and_discount_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_small_image.dart';
import 'package:snap_shop/features/home/presentation/widgets/review_and_add_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/title_and_description_section.dart';

class FavouriteProductItem extends StatelessWidget{
  const FavouriteProductItem({super.key,required this.productsModel});
  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.sizeOf(context).height * 0.25;
    var width = MediaQuery.sizeOf(context).height * 0.4;

    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kProductView,extra: productsModel);
      },
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(
                width: 2,
                color: AppColors.kBorderColor,
              )
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  TitleAndDescriptionSection(
                    title: productsModel.title,
                    description: productsModel.description,
                  ),
                  const SizedBox(height: 8),
                  PriceAndPriceBeforeDiscountSection(
                    price: productsModel.price,
                    discountPercentage: productsModel.discountPercentage,
                  ),
                  const SizedBox(height: 8),
                  ReviewAndAddSection(
                    rating: productsModel.rating,
                  )
                ],
              ),
            ),
            Expanded(child: ProductSmallImage(image: productsModel.image),
            ),
          ],
        ),
      ),
    );
  }
}