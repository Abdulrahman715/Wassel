import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class TotalOrderPrice extends StatelessWidget {
  const TotalOrderPrice({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'إجمالي المبلغ:',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          '${order.totalPayment} ج.م',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
