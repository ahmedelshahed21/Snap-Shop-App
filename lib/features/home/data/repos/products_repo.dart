import 'package:dartz/dartz.dart';
import 'package:snap_shop/core/errors/failure.dart';
import 'package:snap_shop/features/home/data/models/products_model.dart';

abstract class ProductsRepo{
  Future<Either<Failure,List<ProductsModel>>> fetchProducts();
}