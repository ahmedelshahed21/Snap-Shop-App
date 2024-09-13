import 'package:flutter/material.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/favourite_products/presentation/widgets/empty_favourites_view.dart';
import 'package:snap_shop/features/favourite_products/presentation/widgets/favourite_product_item.dart';
import 'package:snap_shop/core/widgets/image_section.dart';


class FavouriteProductsView extends StatelessWidget {
  const FavouriteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).favouriteProducts,
            style: AppStyles.styleMedium18(context),
          ),
        ),
        body: favoriteProducts.isNotEmpty
            ? ListView.separated(
                itemCount: favoriteProducts.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      child: FavouriteProductItem(
                          productsModel: favoriteProducts[index]));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
              )
            : const EmptyFavoritesView());
  }
}
