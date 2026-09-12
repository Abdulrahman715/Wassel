import 'package:wassel/features/cart/data/models/cart_item_model.dart';

abstract class CartStates {}

class CartInitialState extends CartStates {}

class CartUpdatedState extends CartStates {
  final List<CartItemModel> cartItems;
  final double totalPrice;

  CartUpdatedState(this.cartItems, this.totalPrice);
}
