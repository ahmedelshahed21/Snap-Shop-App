import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/description_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/DataAndImageSection.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 8.0),
        child: Column(
          children: [
            Expanded(child: DataAndImageSection(productsModel: productsModel)),
            const SizedBox(height: 30),
            DescriptionSection(description: productsModel.description,),
            const Spacer(),
            TagsSection(tags: productsModel.tags),
          ],
        ),
      ),
    );
  }
}










