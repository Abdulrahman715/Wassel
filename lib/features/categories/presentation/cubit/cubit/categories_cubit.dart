import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/categories/data/repo/categories_repo.dart';
import 'package:wassel/features/home/data/models/category_model.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.categoriesRepo) : super(CategoriesInitial());

  final CategoriesRepo categoriesRepo;

  Future<void> fetchCategoryTree({required int categoryId}) async {
    emit(CategoriesLoading());

    var result = await categoriesRepo.getCategoryTree(categoryId: categoryId);

    result.fold(
      (failure) => emit(CategoriesFailure(errorMessage: failure.errMessage)),
      (subCategories) => emit(CategoriesSuccess(subCategories: subCategories)),
    );
  }
}
