
import 'package:flutter/material.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/payment_details_body.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: PaymentDetailsBody(order: order),
    );
  }
}