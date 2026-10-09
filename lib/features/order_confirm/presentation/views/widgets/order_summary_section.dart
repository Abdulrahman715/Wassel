import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/products_list_view.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    // يمكنك جلب لستة المنتجات والسعر الإجمالي مباشرة من الـ Cubit الموجود في التطبيق
    final cartCubit = context.read<CartCubit>();
    final cartItems = cartCubit.cartList;
    final totalPrice = cartCubit.totalPrice;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'ملخص الطلب',
            textAlign: TextAlign.right,
            style: Styles.labelText,
          ),
          const SizedBox(height: 10),
          ProductsListView(cartItems: cartItems),

          SizedBox(height: 20,),
          // عرض السعر النهائي
          Text(
            'إجمالي المنتجات: $totalPrice ج.م',
            textAlign: TextAlign.center,
            style: Styles.labelText,
          ),
        ],
      ),
    );
  }
}
