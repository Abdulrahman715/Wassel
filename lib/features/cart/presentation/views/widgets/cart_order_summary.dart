import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_states.dart';

class CartOrderSummary extends StatelessWidget {
  const CartOrderSummary({super.key, required this.state});

  final CartUpdatedState state;

  @override
  Widget build(BuildContext context) {
    double shipping = 40;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ملخص الطلب",
            style: Styles.labelText.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _row("السعر", state.totalPrice),
          _row("الشحن", shipping),
          // _row("الإجمالي", state.totalPrice + shipping, isBold: true),
        ],
      ),
    );
  }

  Widget _row(String title, double value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            "${value.toStringAsFixed(2)} ج.م",
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
