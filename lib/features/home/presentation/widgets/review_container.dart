import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
    required this.reviewerName,
    required this.reviewerEmail,
    required this.reviewerComment,
  });

  final String reviewerName;
  final String reviewerEmail;
  final String reviewerComment;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: AppColors.kBorderColor,
                  width: 1
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            color: AppColors.kBackGroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(reviewerName,
              style: AppStyles.styleMedium14(context).copyWith(fontWeight: FontWeight.w900,color: AppColors.kBlackColor),
            ),
            Text(
              reviewerEmail,
              textAlign: TextAlign.end,
              style: AppStyles.styleMedium12(context).copyWith(fontSize: 10,color: AppColors.kBlackColor),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(reviewerComment,
              style: AppStyles.styleMedium14(context).copyWith(color: AppColors.kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}