import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitialState());

  final List<CartItemModel> cartItems = [];

  //! to protect data , clean code , full control with cubit only
  List<CartItemModel> get cartList => cartItems;

  //! to calc the final Price of shopping
  double get totalPrice => cartItems.fold(
    0,
    (sum, item) => sum + item.productModel.price * item.quantity,
  );

  //! اضافة منتج
  void addToCart(CartItemModel newItem) {
    //! if user add the same product , that is already exist in cart
    int index = cartItems.indexWhere(
      (item) => item.productModel.id == newItem.productModel.id,
    );

    if (index != -1) //!  موجود
    {
      cartItems[index].quantity += newItem.quantity; //! نزود الكمية
    } else {
      cartItems.add(newItem); //! لو مش موجود قبل كده ضيفه كمنتج جديد فى الكارت
    }

    updateCart(); //! after any change , calc total price and send new state
  }

  //! حذف منتج
  void removeFromCart(CartItemModel oldItem) {
    cartItems.remove(oldItem);
    updateCart();
  }

  //! دالة تحديث السعر مع كل عملية
  void updateCart() {
    double total = 0; //! inital value
    for (var item in cartItems) {
      //! loop to all product in cart and calculate total price
      total += (item.productModel.price * item.quantity);
    }
    emit(CartUpdatedStata(List.from(cartItems), total));
  }

  //! if user decrease product until quantity = 0 , delete product
  void decreaseQuantity(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      cartItems.remove(item);
    }

    updateCart();
  }
}
