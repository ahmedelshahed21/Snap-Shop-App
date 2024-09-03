import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_loading_effect.dart';

class ProductSmallImage extends StatelessWidget {
  const ProductSmallImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
        bottomRight: Radius.zero,
        bottomLeft: Radius.zero,
      ),
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.fill,
        // height: height * 0.5,
        width:  double.infinity,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey.shade200,
          highlightColor: AppColors.kBackGroundColor,
          child: const ImageLoadingEffect(),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}