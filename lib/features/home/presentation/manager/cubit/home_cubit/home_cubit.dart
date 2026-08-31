import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/home/data/repo/home_repo_impl.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepoImpl homeRepoImpl;

  HomeCubit(this.homeRepoImpl) : super(HomeInitial());

  Future<void> fetchHomeData() async {
    emit(HomeLoading());

    try {
      // جلب البيانات الوهمية من الـ Repo
      var topPicks = await homeRepoImpl.getTopPicks();
      var categories = await homeRepoImpl.getCategories();
      var discoverProducts = await homeRepoImpl.getDiscoverProducts();

      emit(HomeSuccess(
        categories: categories,
        topPicks: topPicks,
        discoverProducts: discoverProducts,
      ));
      

    } catch (e) {
      emit(HomeError(errorMessage: e.toString()));
    }
  }
}