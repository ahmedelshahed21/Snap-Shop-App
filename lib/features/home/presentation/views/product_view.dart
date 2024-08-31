import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/description_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/DataAndImageSection.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_data_widget.dart';
import 'package:snap_shop/features/home/presentation/widgets/reviews_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/tags_section.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.productsModel});

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.kBackGroundColor,
        centerTitle: true,
        title: Text(
          'Details',
          style: AppStyles.styleMedium12(context).copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 12.0, left: 12.0, right: 12.0, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataAndImageSection(productsModel: productsModel),
              const SizedBox(height: 20),
              ProductDataWidget(
                  name: 'Return Policy',
                  productData: productsModel.returnPolicy),
              const SizedBox(height: 20),
              DescriptionSection(
                description: productsModel.description,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDataWidget(
                      name: '', productData: productsModel.shippingInformation),
                  ProductDataWidget(
                      name: 'Rating',
                      productData: productsModel.rating.toString()),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: ReviewsSection(productsModel: productsModel),
              ),
              TagsSection(tags: productsModel.tags),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
