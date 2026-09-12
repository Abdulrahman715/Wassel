import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_app_bar.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_checkout_section.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_order_summary.dart';
import 'package:wassel/features/cart/presentation/views/widgets/custom_cart_item.dart';
import 'package:wassel/features/cart/presentation/views/widgets/empty_cart_message.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. الـ App Bar في الأعلى
        CartAppBar(
          onBackToHome: () {
            Navigator.pop(context);
          },
        ),

        // 2. لستة المنتجات (مغلفة بـ Expanded لتتحرك بحرية وتملأ المساحة الوسطى)
        Expanded(
          child: BlocBuilder<CartCubit, CartStates>(
            builder: (context, state) {
              if (state is CartUpdatedState && state.cartItems.isNotEmpty) {
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  separatorBuilder: (_, _) => const SizedBox(height: 30),
                  itemCount: state.cartItems.length,
                  itemBuilder: (context, index) {
                    return CustomCartItem(item: state.cartItems[index]); // أو حسب الـ item لديك
                  },
                );
              }
              
              // إذا كانت السلة فارغة
              return const Center(child: EmptyCartMessage());
            },
          ),
        ),

        // 3. ملخص الطلب وزر الدفع (ثابتين في الأسفل ولا يظهران إلا إذا كان هناك منتجات)
        BlocBuilder<CartCubit, CartStates>(
          builder: (context, state) {
            if (state is CartUpdatedState && state.cartItems.isNotEmpty) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha:0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, -3), // ظل خفيف للأعلى يوضح الفصل
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CartOrderSummary(state: state),
                    const SizedBox(height: 15),
                    const CartCheckoutSection(),
                  ],
                ),
              );
            }
            // لو السلة فارغة، لا نعرض لا الملخص ولا زر الدفع
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}