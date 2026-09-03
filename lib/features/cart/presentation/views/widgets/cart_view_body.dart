// import 'package:flutter/material.dart';
// import 'package:wassel/features/cart/presentation/views/widgets/cart_app_bar.dart';
// import 'package:wassel/features/cart/presentation/views/widgets/cart_item_style.dart';

// class CartViewBody extends StatelessWidget {
//   const CartViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [CartAppBar(), SizedBox(height: 10), CartItemStyle(cartItemModel: ,)],
//     );
//   }
// }

// lib/features/cart/presentation/views/widgets/cart_view_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_app_bar.dart';
import 'package:wassel/features/cart/presentation/views/widgets/cart_item_style.dart'; // ملف الـ CartItemWidget الذي أنشأناه بالأعلى

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        var cartCubit = BlocProvider.of<CartCubit>(context);
        var items = cartCubit.cartList;
        double total = cartCubit.totalPrice;

        return Column(
          children: [
            const CartAppBar(),
            const SizedBox(height: 10),

            // 1. قائمة المنتجات المضافة
            Expanded(
              child: items.isEmpty
                  ? const Center(
                      child: Text(
                        'السلة فارغة حالياً 🛒',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return CartItemStyle(cartItemModel: items[index]);
                      },
                    ),
            ),

            // 2. الجزء السفلي (السعر الإجمالي وزر اطلب الآن)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'السعر الإجمالي',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${total.toStringAsFixed(2)} ج.م',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: items.isEmpty
                        ? null
                        : () {
                            // منطق إتمام الطلب (Checkout)
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsData.primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'إتمام الطلب',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
