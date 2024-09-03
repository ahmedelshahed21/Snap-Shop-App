import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_small_image.dart';

Set<ProductsModel> favoriteProducts = {};

class ImageSection extends StatefulWidget {
  const ImageSection({super.key, required this.productsModel});

  final ProductsModel productsModel;

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductSmallImage(image: widget.productsModel.image),
        Positioned(
          top: -6,
          right: -2,
          child: IconButton(
            isSelected: isSelected,
            color: AppColors.kPrimaryColor,
            selectedIcon: const Icon(FontAwesomeIcons.heart),
            onPressed: () {
              isSelected
                  ? favoriteProducts.add(widget.productsModel)
                  : favoriteProducts.remove(widget.productsModel);
              setState(() {
                isSelected = !isSelected;
              });
            },
            icon: const Icon(
              Icons.favorite_rounded,
              color: Colors.red,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}
