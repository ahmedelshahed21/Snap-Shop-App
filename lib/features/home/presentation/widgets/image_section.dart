import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_loading_effect.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.height,
    required this.width,
    this.image,
  });

  final double height;
  final double width;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
            bottomRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
          child: CachedNetworkImage(
            imageUrl: image ?? '',
            fit: BoxFit.fill,
            height: height * 0.5,
            width: width,
            placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey.shade200,
                highlightColor: AppColors.kBackGroundColor,
                child: const ImageLoadingEffect(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          top: 6,
          right: 6,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const ShapeDecoration(
              color: AppColors.kBackGroundColor,
              shape: OvalBorder(),
            ),
            child: const Icon(
              FontAwesomeIcons.heart,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}


