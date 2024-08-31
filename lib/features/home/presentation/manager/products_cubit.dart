import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/home/data/repos/products_repo.dart';
import 'package:snap_shop/features/home/presentation/manager/products_state.dart';



class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo productsRepo;

  ProductsCubit(this.productsRepo) : super(ProductsInitialState());

  Future<void> fetchProducts() async {
    emit(ProductsLoadingState());
    var result = await productsRepo.fetchProducts();
    result.fold(
          (failure) {
        print('Fetch failed: ${failure.errMessage}');
        emit(ProductsFailureState(errMessage: failure.errMessage));
      },
          (products) {
        print('Fetch succeeded: $products');
        emit(ProductsSuccessState(products: products));
      },
    );
  }
}
