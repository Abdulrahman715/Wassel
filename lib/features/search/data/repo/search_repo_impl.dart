import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/core/service/api_service.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/search/data/repo/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> searchProducts({
    required String query,
    required int limit,
  }) async {
    try {
      var response = await apiService.getData(
        'products/search',
        queryParameters: {'q': query, 'limit': limit},
      );

      // 1. التحقق هل الاستجابة List مباشرة (حسب بوستمان) أو Map تحتوي على مفتاح data
      List<dynamic> productsData;
      if (response is List) {
        productsData = response;
      } else if (response is Map && response.containsKey('data')) {
        productsData = response['data'];
      } else {
        productsData = [];
      }

      // 2. تحويل الـ JSON إلى List من ProductModel بأمان
      List<ProductModel> searchProducts = productsData
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList();

      return Right(searchProducts);
    } catch (e) {
      // print("repoError: ${e.toString()}");

      if (e is Failure) {
        return Left(e);
      }
      if (e is DioException) {
        // print('status code ${e.response?.statusCode}');
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errMessage: e.toString()));
    }
  }
}