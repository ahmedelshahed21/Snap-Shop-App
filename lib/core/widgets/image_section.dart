import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/product_small_image.dart';

List<ProductsModel> favoriteProducts = [];

class ImageSection extends StatefulWidget {
  const ImageSection({super.key, required this.productsModel});
  final ProductsModel productsModel;

  @override
  State<ImageSection> createState() => _ImageSectionState();
}
class _ImageSectionState extends State<ImageSection> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = favoriteProducts.contains(widget.productsModel);
    return Stack(
      children: [
        ProductSmallImage(image: widget.productsModel.image),
        Positioned(
          top: -6,
          right: -2,
          child: IconButton(
            color: AppColors.kPrimaryColor,
            selectedIcon: const Icon(FontAwesomeIcons.heart),
            onPressed: () {
              setState(() {
                if (isSelected) {
                  favoriteProducts.remove(widget.productsModel);
                } else {
                  favoriteProducts.add(widget.productsModel);
                }
              });
            },
            icon: Icon(
              isSelected ? Icons.favorite_rounded : FontAwesomeIcons.heart,
              color: isSelected ? Colors.red : AppColors.kPrimaryColor,
              size: isSelected ? 28 : 24,
            ),
          ),
        ),
      ],
    );
  }
}
