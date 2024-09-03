import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/favourite_products/presentation/widgets/empty_favouritesView.dart';
import 'package:snap_shop/features/favourite_products/presentation/widgets/favourite_product_item.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_section.dart';

class FavouriteProductsView extends StatelessWidget {
  const FavouriteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    var favoriteProductsList = favoriteProducts.toList();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Favourite Products',
            style: AppStyles.styleMedium18(context),
          ),
        ),
        body: favoriteProductsList.isNotEmpty
            ? ListView.separated(
                itemCount: favoriteProducts.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      child: FavouriteProductItem(
                          productsModel: favoriteProductsList[index]));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
              )
            : const EmptyFavoritesView());
  }
}


