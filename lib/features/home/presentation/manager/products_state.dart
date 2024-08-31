

import 'package:snap_shop/features/home/data/models/products_model.dart';

class ProductsState {
  ProductsState();
}


class ProductsInitialState extends ProductsState{}
class ProductsLoadingState extends ProductsState{}
class ProductsSuccessState extends ProductsState{
  final List<ProductsModel> products;
  ProductsSuccessState({required this.products});
}
class ProductsFailureState extends ProductsState{
  final String? errMessage;
  ProductsFailureState({required this.errMessage});
}

