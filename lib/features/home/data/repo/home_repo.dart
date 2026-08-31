
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future< List<CategoryModel>> getCategories();
  Future< List<ProductModel>> getTopPicks();
  Future< List<ProductModel>> getDiscoverProducts();
}