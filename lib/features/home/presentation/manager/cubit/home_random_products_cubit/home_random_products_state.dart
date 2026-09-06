part of 'home_random_products_cubit.dart';

sealed class HomeRandomProductsState extends Equatable {
  const HomeRandomProductsState();

  @override
  List<Object> get props => [];
}

final class HomeRandomProductsInitial extends HomeRandomProductsState {}

final class HomeRandomProductsLoading extends HomeRandomProductsState {}

final class HomeRandomProductsSuccess extends HomeRandomProductsState {
  final List<ProductModel> randomProducts;

  const HomeRandomProductsSuccess({required this.randomProducts});
}

final class HomeRandomProductsFailure extends HomeRandomProductsState {
  final String errMessage;

  const HomeRandomProductsFailure({required this.errMessage});
}
