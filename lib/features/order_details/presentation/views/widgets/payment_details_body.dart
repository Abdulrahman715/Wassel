
import 'package:flutter/material.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/payment_method_order.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/total_order_price.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotalOrderPrice(order: order),
        const Divider(height: 20),
        PaymentMethodOrder(order: order),
      ],
    );
  }
}
