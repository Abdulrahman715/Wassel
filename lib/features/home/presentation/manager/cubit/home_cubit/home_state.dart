
import 'package:wassel/features/home/data/models/category_model.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
final class HomeSuccess extends HomeState {
  final List<CategoryModel> categories;
  final List<ProductModel> topPicks;
  final List<ProductModel> discoverProducts;

  HomeSuccess({
    required this.categories,
    required this.topPicks,
    required this.discoverProducts,
  });
}
final class HomeError extends HomeState {
  final String errorMessage;

  HomeError({required this.errorMessage});
}
