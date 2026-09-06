part of 'home_top_products_cubit.dart';

sealed class HomeTopProductsState extends Equatable {
  const HomeTopProductsState();

  @override
  List<Object> get props => [];
}

final class HomeTopProductsInitial extends HomeTopProductsState {}

final class HomeTopProductsLoading extends HomeTopProductsState {}

final class HomeTopProductsSuccess extends HomeTopProductsState {
  final List<ProductModel> topProducts;

  const HomeTopProductsSuccess({required this.topProducts});
}

final class HomeTopProductsFailure extends HomeTopProductsState {
  final String errMessage;

  const HomeTopProductsFailure({required this.errMessage});
}
