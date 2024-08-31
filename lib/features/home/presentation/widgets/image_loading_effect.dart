import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snap_shop/core/theme/app_colors.dart';


class ImageLoadingEffect extends StatelessWidget {
  const ImageLoadingEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.kGreyColor,
      highlightColor: AppColors.kBackGroundColor,
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.19,
        decoration: ShapeDecoration(
          color: AppColors.kGreyColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14))),
        ),
      ),
    );
  }
}