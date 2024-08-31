import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/constants/app_strings.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:snap_shop/core/theme/app_styles.dart';
import 'package:snap_shop/core/utils/service_locator.dart';
import 'package:snap_shop/features/home/data/repos/products_repo_impl.dart';
import 'package:snap_shop/features/home/presentation/manager/products_cubit.dart';
import 'package:snap_shop/features/home/presentation/widgets/products_sliver_grid_view.dart';
import 'package:snap_shop/features/home/presentation/widgets/search_section.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt.get<ProductsRepoImpl>())..fetchProducts(),
      child: Scaffold(
        backgroundColor: AppColors.kBackGroundColor,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.kBackGroundColor,
          title: Text(
            AppStrings.appName,
            style: AppStyles.styleMedium20(context).copyWith(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SearchSection()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            ProductsSliverGridView(),
          ],
        ),
      ),
    );
  }
}


