import 'package:wassel/features/cart/data/models/cart_item_model.dart';

abstract class CartStates {}

class CartInitialState extends CartStates {}

class CartUpdatedStata extends CartStates {
  final List<CartItemModel> cartItems;
  final double totalPrice;

  CartUpdatedStata(this.cartItems, this.totalPrice);
}
