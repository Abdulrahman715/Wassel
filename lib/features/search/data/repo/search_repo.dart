import 'package:dartz/dartz.dart';
import 'package:wassel/core/errors/failure.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<ProductModel>>> searchProducts({
    required String query,
    required int limit,
  });
}