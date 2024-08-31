import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrl='https://dummyjson.com/products';
  ApiService(this._dio);

  Future<Map<String,dynamic>> get()async{
    var response = await _dio.get(_baseUrl);
    //print(response.statusCode);
    return response.data;
  }
}