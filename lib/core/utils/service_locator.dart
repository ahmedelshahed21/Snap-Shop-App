import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:snap_shop/core/utils/api_service.dart';
import 'package:snap_shop/features/home/data/repos/products_repo_impl.dart';


final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<ProductsRepoImpl>(ProductsRepoImpl(getIt.get<ApiService>()));
}