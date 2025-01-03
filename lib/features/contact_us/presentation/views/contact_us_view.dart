import 'package:flutter/material.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/constants/app_assets.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/core/utils/helpers/clipboard_type.dart';
import 'package:snap_shop/core/utils/helpers/copy_to_clipboard.dart';
import 'package:snap_shop/core/utils/helpers/open_whats_app.dart';
import 'package:snap_shop/features/contact_us/presentation/widgets/profile_card.dart';


class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBorderColor,
      appBar: AppBar(backgroundColor: AppColors.kBorderColor),
      body: Column(
        children: [
          const Spacer(),
          const CircleAvatar(
            backgroundImage: AssetImage(AppAssets.profile),
            radius: 70,
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).ahmedElShahed,
            style: AppStyles.styleMedium24(context),
          ),
          const SizedBox(height: 6),
          Text(
            "Flutter Developer",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 12),
          ProfileCard(
            icon: Icons.phone,
            title: '+20 (01068192572)',
            onTap: () => openWhatsApp('201068192572'),
            onLongPress: ()=>copyToClipboard(context,"01068192572",type: ClipboardType.phone),
          ),
          ProfileCard(
            icon: Icons.email,
            title: "ahmed.elshahed.pro@gmail.com",
            onLongPress: ()=>copyToClipboard(context,"ahmed.elshahed.pro@gmail.com",type: ClipboardType.email),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
