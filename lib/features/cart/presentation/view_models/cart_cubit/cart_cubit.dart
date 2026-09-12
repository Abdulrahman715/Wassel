import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitialState());

  final List<CartItemModel> _cartItems = [];

  //! to protect data , clean code , full control with cubit only
  List<CartItemModel> get cartList => List.unmodifiable(_cartItems);

  //! to calc the final Price of shopping
  double get totalPrice => _cartItems.fold(
    0,
    (sum, item) => sum + item.productModel.price * item.quantity,
  );

  //! اضافة منتج
  void addToCart(CartItemModel newItem) {
    //! if user add the same product , that is already exist in cart
    int index = _cartItems.indexWhere(
      (item) => item.productModel.id == newItem.productModel.id,
    );

    if (index != -1) //!  موجود
    {
      //! نزود الكمية
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity + newItem.quantity,
      );
    } else {
      _cartItems.add(newItem); //! لو مش موجود قبل كده ضيفه كمنتج جديد فى الكارت
    }

    updateCart(); //! after any change , calc total price and send new state
  }

  //! حذف منتج
  void removeFromCart(CartItemModel oldItem) {
    _cartItems.removeWhere(
      (item) => item.productModel.id == oldItem.productModel.id,
    );
    updateCart();
  }

  //! if user decrease product until quantity = 0 , delete product
  void decreaseQuantity(CartItemModel item) {
    final index = _cartItems.indexWhere(
      (cartItem) => cartItem.productModel.id == item.productModel.id,
    );

    if (index == -1) {
      return;
    }

    if (_cartItems[index].quantity > 1) {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity - 1,
      );
    } else {
      _cartItems.removeAt(index);
    }

    updateCart();
  }

  //! زيادة كمية منتج داخل السلة
  void increaseQuantity(CartItemModel item) {
    final index = _cartItems.indexWhere(
      (cartItem) => cartItem.productModel.id == item.productModel.id,
    );

    if (index == -1) {
      return;
    }

    _cartItems[index] = _cartItems[index].copyWith(
      quantity: _cartItems[index].quantity + 1,
    );
    updateCart();
  }

  //! دالة تحديث السعر مع كل عملية
  void updateCart() {
    //! بعد كل عملية تحديث على السلة , نرسل الحالة الجديدة مع السعر الجديد
    //? مش لازم احسب السعر تانى هنا لانى عامل getter للـ totalPrice
    emit(CartUpdatedState(List.from(_cartItems), totalPrice));
  }
}
