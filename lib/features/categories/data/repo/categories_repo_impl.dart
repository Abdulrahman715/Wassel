import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/core/service/api_service.dart';
import 'package:wassel/features/categories/data/repo/categories_repo.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService apiService;

  CategoriesRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategoryTree({
    required int categoryId,
  }) async {
    try {
      var data = await apiService.getData('categories/$categoryId/tree');
      List<CategoryModel> categoryTree = (data['subcategories'] as List)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(categoryTree);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
