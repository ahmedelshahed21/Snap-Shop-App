import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/core/utils/helpers/show_image_dialog.dart';
import 'package:snap_shop/features/home/presentation/widgets/image_loading_effect.dart';

class ImageAndNameSection extends StatelessWidget {
  const ImageAndNameSection({
    super.key,
    required this.image,
    required this.title,
    required this.images,
  });

  final String image;
  final String title;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 170 / 240,
      child: GestureDetector(
        onTap: (){
          showImageDialog(context, images, images.indexOf(image));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1.2, color: AppColors.kBorderColor),
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const ImageLoadingEffect(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppStyles.styleMedium12(context)
                    .copyWith(color: AppColors.kPriceColor, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
