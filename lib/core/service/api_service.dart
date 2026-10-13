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

  Future<Map<String, dynamic>> postData(
    String endPoint, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await _dio.post(
        '$_baseUrl$endPoint',
        data: data,
        //! أحياناً سيرفرات الـ Node.js بتطلع خطأ 422 لو الـ Header مش محدد صراحةً إنه application/json.
        options: Options(headers: {'Content-Type': 'application/json'}),
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (dioError) {
      // 👈 اطبع استجابة السيرفر هنا عشان تشوف شكل الخطأ أو الـ JSON اللي راجع
      // print('=== DIO ERROR RESPONSE ===');
      // print(dioError.response?.data);
      // print('==========================');
      throw ServerFailure.fromDioError(dioError);
    }
  }
}
