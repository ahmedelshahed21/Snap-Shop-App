import 'package:flutter/material.dart';
import 'package:snap_shop/core/theme/app_styles.dart';


class TitleAndDescriptionSection extends StatelessWidget {
  const TitleAndDescriptionSection({super.key,this.title,this.description,});

  final String? title,description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title??'No Title',
            style: AppStyles.styleMedium13(context).copyWith(),
            overflow: TextOverflow.ellipsis,
          ),
          Text(description?? '',
            style: AppStyles.styleMedium13(context),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}