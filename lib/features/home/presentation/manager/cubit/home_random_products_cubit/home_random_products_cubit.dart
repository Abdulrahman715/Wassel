import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/home/data/models/product_model.dart';
import 'package:wassel/features/home/data/repo/home_repo.dart';

part 'home_random_products_state.dart';

class HomeRandomProductsCubit extends Cubit<HomeRandomProductsState> {
  HomeRandomProductsCubit(this.homeRepo) : super(HomeRandomProductsInitial()) {
    fetchHomeRandomProducts();
  }

  final HomeRepo homeRepo;

  Future<void> fetchHomeRandomProducts() async {
    emit(HomeRandomProductsLoading());
    var result = await homeRepo.getRandomProducts();

    result.fold(
      (isError) {
        emit(HomeRandomProductsFailure(errMessage: isError.errMessage));
      },
      (randomProducts) {
        emit(HomeRandomProductsSuccess(randomProducts: randomProducts));
      },
    );
  }
}
