import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/core/service/api_service.dart';
import 'package:wassel/features/auth/data/model/register_model.dart';
import 'package:wassel/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<Failure, RegisterModel>> registerUser({
    required String name,
    required String phone,
    required String password,
    required String email,
  }) async {
    try {
      // 1. استقبال البيانات من الـ API
      var data = await apiService.postData(
        'auth/register',
        data: {
          "name": name,
          "phone": phone,
          "password": password,
          "email": email,
        },
      );

      // 2. تحويل الـ JSON لـ Model عند النجاح
      RegisterModel registerModel = RegisterModel.fromJson(data);
      return right(registerModel);
      
    } catch (e) {
      // 👈 اطبع الخطأ هنا في الـ Repository
      print('=== REPO EXCEPTION ===');
      print(e.toString());
      print('======================');
      // 3. التقاط أي خطأ (سواء ServerFailure أو DioException) وتحويله لـ left
      if (e is Failure) {
        return left(e);
      }
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}