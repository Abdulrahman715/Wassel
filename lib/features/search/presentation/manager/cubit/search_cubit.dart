import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/search/data/repo/search_repo.dart';
import 'package:wassel/features/home/data/models/product_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  //! دالة لإرجاع الـ Cubit للحالة الابتدائية عند مسح حقل البحث
  void resetSearch() {
    emit(SearchInitial());
  }

  Future<void> searchProducts({required String query, int? limit}) async {
    if (query.trim().isEmpty) {
      emit(SearchInitial());
      return;
    }
    emit(SearchLoading());
    final result = await searchRepo.searchProducts(query: query, limit: 20);
    result.fold(
      (failure) => emit(SearchFailure(failure.errMessage)),
      (searchProducts) => emit(SearchSuccess(searchProducts)),
    );
  }
}
