import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:snap_shop/core/errors/failure.dart';
import 'package:snap_shop/core/utils/api_service.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';
import 'package:snap_shop/features/home/data/repos/products_repo.dart';

class ProductsRepoImpl extends ProductsRepo {
  final ApiService apiService;

  ProductsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductsModel>>> fetchProducts() async {
    try {
      var data = await apiService.get();
      List<ProductsModel> products = [];
      for (var item in data['products']) {
        products.add(ProductsModel.fromjson(item));
      }
      // print('Products fetched: $products');
      return right(products);
    } catch (e) {
      if (e is DioException) {
        // print('DioException: ${e.message}');
        return left(ServerFailure.fromDioException(e));
      } else {
        // print('Exception: $e');
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
