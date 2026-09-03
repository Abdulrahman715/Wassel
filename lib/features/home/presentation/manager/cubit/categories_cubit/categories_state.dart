import 'package:wassel/features/home/data/models/category_model.dart';

abstract class HomeCategoriesState {}

final class HomeCategoriesInitial extends HomeCategoriesState {}

final class HomeCategoriesLoading extends HomeCategoriesState {}

final class HomeCategoriesSuccess extends HomeCategoriesState {
  final List<CategoryModel> homeCategories;

  HomeCategoriesSuccess({required this.homeCategories});
}

final class HomeCategoriesFailure extends HomeCategoriesState {
  final String errMessage;

  HomeCategoriesFailure({required this.errMessage});
}
