import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/home/data/repo/home_repo.dart';

part 'home_top_products_state.dart';

class HomeTopProductsCubit extends Cubit<HomeTopProductsState> {
  HomeTopProductsCubit(this.homeRepo) : super(HomeTopProductsInitial()) {
    fetchHomeTopProducts();
  }

  final HomeRepo homeRepo;

  Future<void> fetchHomeTopProducts() async {
    emit(HomeTopProductsLoading());
    var result = await homeRepo.getTopProducts();

    result.fold(
      (isError) {
        emit(HomeTopProductsFailure(errMessage: isError.errMessage));
      },
      (topProducts) {
        emit(HomeTopProductsSuccess(topProducts: topProducts));
      },
    );
  }
}
