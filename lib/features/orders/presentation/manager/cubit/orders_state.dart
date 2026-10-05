import 'package:wassel/features/orders/data/models/order_model.dart';

abstract class OrdersState {}

final class OrdersInitial extends OrdersState {}

final class OrdersLoading extends OrdersState {}

final class OrdersFailure extends OrdersState {
  final String errMessage;

  OrdersFailure({required this.errMessage});
}

final class OrdersSuccess extends OrdersState {
  final List<OrderModel> orders;

  OrdersSuccess({required this.orders});
}
