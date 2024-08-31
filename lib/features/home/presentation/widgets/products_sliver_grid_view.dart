import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/home/presentation/manager/products_cubit.dart';
import 'package:snap_shop/features/home/presentation/manager/products_state.dart';
import 'package:snap_shop/features/home/presentation/widgets/custom_loading_effect.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_item.dart';



class ProductsSliverGridView extends StatelessWidget {
  const ProductsSliverGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (BuildContext context, ProductsState state) {
        if (state is ProductsSuccessState) {
          if (state.products.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('No products available')),
            );
          }
          return SliverPadding(
            padding: const EdgeInsets.only(right: 8, left: 8, bottom: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ProductItem(productsModel: state.products[index]);
                },
                childCount: state.products.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5 / 8,
              ),
            ),
          );
        } else if (state is ProductsFailureState) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                state.errMessage.toString(),
                style: AppStyles.styleMedium20(context),
              ),
            ),
          );
        } else {
          return SliverPadding(
            padding: const EdgeInsets.only(right: 8, left: 8, bottom: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const CustomLoadingEffect();
                },
                childCount: 10,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5 / 8,
              ),
            ),
          );
        }
      },
    );
  }
}


