import 'package:dartz/dartz.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/features/auth/data/model/login_model.dart';
import 'package:wassel/features/auth/data/model/register_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, RegisterModel>> registerUser({
    required String name,
    required String phone,
    required String password,
    required String email,
  });
  Future<Either<Failure, LoginModel>> loginUser({
    required String phone,
    required String password,
  });
}
