import 'package:go_router/go_router.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/presentation/views/home_view.dart';
import 'package:snap_shop/features/home/presentation/views/product_view.dart';
import 'package:snap_shop/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView='/homeView';
  static const kProductView='/kSearchView';
  static final router=GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context,state) => const SplashView()
        ),
        GoRoute(
            path: kHomeView,
            builder: (context,state) => const HomeView()
        ),
        GoRoute(
          path: kProductView,
          builder: (context,state) => ProductView(productsModel: state.extra as ProductsModel)
        ),
      ]
  );
}