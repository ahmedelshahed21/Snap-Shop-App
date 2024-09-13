import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/features/home/presentation/widgets/custom_drawer.dart';
import 'package:snap_shop/features/home/presentation/widgets/products_sliver_grid_view.dart';
import 'package:snap_shop/features/home/presentation/widgets/search_section.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          AppStrings.appName,
          style: AppStyles.styleMedium20(context).copyWith(
            color: AppColors.kPrimaryColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                scaffoldKey.currentState!.openEndDrawer();
              },
              color: AppColors.kPrimaryColor,
              icon: const Icon(FontAwesomeIcons.list)
          ),
        ],
      ),
      endDrawer: const CustomDrawer(),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SearchSection()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          ProductsSliverGridView(),
        ],
      ),
    );
  }
}


