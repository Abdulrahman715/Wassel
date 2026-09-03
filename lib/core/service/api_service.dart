import 'package:dio/dio.dart';
import 'package:wassel/core/errors/failure.dart';

class ApiService {
  final String _baseUrl =
      'https://waasel-backend-production.up.railway.app/api/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<dynamic> getData(
    String endPoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await _dio.get('$_baseUrl$endPoint');

      return response.data;
    } on DioException catch (dioError) {
      throw ServerFailure.fromDioError(dioError);
    }
  }
}
