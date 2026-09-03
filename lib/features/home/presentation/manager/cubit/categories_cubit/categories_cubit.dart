import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/home/data/repo/home_repo.dart';
import 'package:wassel/features/home/presentation/manager/cubit/categories_cubit/categories_state.dart';

class HomeCategoriesCubit extends Cubit<HomeCategoriesState> {
  // استدعِ الدالة هنا مباشرة داخل الـ Constructor
  HomeCategoriesCubit(this.homeRepo) : super(HomeCategoriesInitial()) {
    fetchAllHomeCategories();
  }

  final HomeRepo homeRepo;

  Future<void> fetchAllHomeCategories() async {
    emit(HomeCategoriesLoading());

    var result = await homeRepo.getAllCategories();

    result.fold(
      (isError) {
        // print('ERROR IS: $isError'); // اطبع الخطأ لمعرفته
        emit(HomeCategoriesFailure(errMessage: isError.errMessage));
      },
      (categories) {
        // print('CATEGORIES ARE: $categories'); // اطبع الفئات لمعرفته
        emit(HomeCategoriesSuccess(homeCategories: categories));
      },
    );
  }
}
