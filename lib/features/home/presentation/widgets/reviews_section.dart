import 'package:flutter/material.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/widgets/custom_expansion_tile.dart';
import 'package:snap_shop/features/home/presentation/widgets/review_container.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({
    super.key,
    required this.productsModel,
  });

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: 'Show Reviews',
      children: ListView.separated(
        itemCount: productsModel.reviews.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ReviewContainer(
            reviewerName: productsModel.reviews[index].reviewerName,
            reviewerEmail: productsModel.reviews[index].reviewerEmail,
            reviewerComment: productsModel.reviews[index].comment,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}