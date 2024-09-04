import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_loading_effect.dart';

class ProductSmallImage extends StatelessWidget {
  const ProductSmallImage({
    super.key,
    required this.image,
    this.topRight,
    this.topLeft,
    this.bottomRight,
    this.bottomLeft
  });

  final String image;
  final Radius? topRight;
  final Radius? topLeft;
  final Radius? bottomRight;
  final Radius? bottomLeft;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: topRight ?? const Radius.circular(12),
        topLeft: topLeft ?? const Radius.circular(12),
        bottomRight:bottomRight ?? Radius.zero,
        bottomLeft:bottomLeft ?? Radius.zero,
      ),
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.fill,
        height: double.infinity,
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