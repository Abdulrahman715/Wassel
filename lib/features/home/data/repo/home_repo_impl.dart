import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/core/service/api_service.dart';
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    try {
      var data = await apiService.getData('categories');

      // تحويل الـ data الصريحة إلى List ثم تحويل كل عنصر إلى Map و CategoryModel
      List<CategoryModel> categories = (data as List)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(categories);
    } catch (e) {
      // print('ERROR IS: $e'); // اطبع الخطأ لمعرفته
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: 'خطأ غير متوقع '));
      }
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getTopProducts() async {
    try {
      var data = await apiService.getData('products/top?limit=10');

      List<ProductModel> topProducts = (data as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();

      return Right(topProducts);
    } catch (e) {
      print('ERROR IS: $e'); // اطبع الخطأ لمعرفته
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
