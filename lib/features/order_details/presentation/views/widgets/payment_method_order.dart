import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class PaymentMethodOrder extends StatelessWidget {
  const PaymentMethodOrder({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'طريقة الدفع',
          style: Styles.textStyle14,
        ),
        Text(
          order.paymentMethod,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}