import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:snap_shop/core/config/localization/generated/l10n.dart';
import 'package:snap_shop/core/config/routing/app_router.dart';
import 'package:snap_shop/core/utils/service_locator.dart';
import 'package:snap_shop/core/widgets/back_icon_button.dart';
import 'package:snap_shop/features/change_language/presentation/manager/languages_cubit/languages_cubit.dart';
import 'package:snap_shop/core/theme/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:snap_shop/features/home/data/repos/products_repo_impl.dart';
import 'package:snap_shop/features/home/presentation/manager/products_cubit.dart';

class SnapShop extends StatelessWidget {
  const SnapShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductsCubit(getIt.get<ProductsRepoImpl>())..fetchProducts()),
        BlocProvider(create: (_)=>LanguageCubit())
      ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            locale: locale,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.kBackGroundColor,
              appBarTheme: const AppBarTheme(
                scrolledUnderElevation: 0,
                iconTheme: IconThemeData(
                  color: AppColors.kPrimaryColor
                ),
                backgroundColor: AppColors.kBackGroundColor,
              ),
              actionIconTheme: ActionIconThemeData(
                backButtonIconBuilder: (context)=>const BackIconButton(),
              )
            ),
          );
        },
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}



