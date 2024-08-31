import 'package:flutter/material.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/data_section.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_and_name_section.dart';

class DataAndImageSection extends StatelessWidget {
  const DataAndImageSection({
    super.key,
    required this.productsModel,
  });

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DataSection(
            brand: productsModel.brand!,
            priceBeforeDiscount:'${productsModel.price} ${AppStrings.currency}',
            price: '${AppStrings.currency} ${(productsModel.price - (productsModel.price * productsModel.discountPercentage / 100)).toStringAsFixed(2)}',
            discountPercentage: '${productsModel.discountPercentage} %',
            warrantyInformation: productsModel.warrantyInformation,
            availabilityStatus: productsModel.availabilityStatus,
            stock: productsModel.stock,
          ),
        ),
        Expanded(
          child: ImageAndNameSection(
            image: productsModel.image,
            title: productsModel.title,
          ),
        ),
      ],
    );
  }
}




