import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_shop/core/constants/app_assets.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/utils/widgets/custom_text_form_field.dart';


class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              prefixIcon: SvgPicture.asset(AppAssets.searchIcon,
                height: 40,
                color: AppColors.kPrimaryColor,
              ),
              hintText: AppStrings.searchHintText,
            ),
          ),
          const SizedBox(width: 20),
          SvgPicture.asset(AppAssets.cartIcon,
            height: 30,
            color: AppColors.kPrimaryColor,
          ),

        ],
      ),
    );
  }
}