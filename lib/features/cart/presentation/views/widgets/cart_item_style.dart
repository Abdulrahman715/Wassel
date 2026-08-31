import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/cart/data/models/cart_item_model.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';

class CartItemStyle extends StatelessWidget {
  const CartItemStyle({super.key, required this.cartItemModel});

  final CartItemModel cartItemModel;

  @override
  Widget build(BuildContext context) {
    var cartCubit = BlocProvider.of<CartCubit>(context);

    // Dismissible تجعل الكارت قابلاً للسحب للحذف
    return Dismissible(
      key: ValueKey(cartItemModel.productModel.id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cartCubit.removeFromCart(cartItemModel);
      },
      background: Container(
        color: ColorsData.primaryColor,
        alignment: Alignment.centerLeft,
        
      ),
      child: Container(),
    );
  }
}
