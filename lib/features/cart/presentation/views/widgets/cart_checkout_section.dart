import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';
import 'package:wassel/features/cart/presentation/views/widgets/checkout_body.dart';

class CartCheckoutSection extends StatelessWidget {
  const CartCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        if (state is CartUpdatedState) {
          double shipping = 40;
          double total = state.totalPrice + shipping;

          return Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10)
              ],
            ),
            child: CheckoutBody(total: total),
          );
        }

        return const SizedBox();
      },
    );
  }
}
