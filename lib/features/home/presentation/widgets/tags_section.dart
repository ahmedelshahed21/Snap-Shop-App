import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';

class TagsSection extends StatelessWidget {
  const TagsSection({
    super.key,
    required this.tags,
  });

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              for (var tag in tags)
                Chip(
                  label: Text(tag),
                  side: const BorderSide(
                    width: 0.6,
                    color: AppColors.kPriceColor,
                  ),
                  onDeleted: () {
                    tags.remove(tag);
                  },
                  deleteIcon: const Icon(
                    FontAwesomeIcons.hashtag,
                    size: 16,
                    color: AppColors.kPriceColor,
                  ),
                  // deleteIconColor: AppColors.kPrimary900Color,
                  // backgroundColor: AppColors.kPrimary100Color,
                  labelStyle: AppStyles.styleMedium12(context).copyWith(
                    color: AppColors.kPriceColor,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}