import 'package:dartz/dartz.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryModel>>> getAllCategories();
}
