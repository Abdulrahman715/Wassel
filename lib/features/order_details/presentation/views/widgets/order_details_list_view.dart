import 'package:flutter/material.dart';
import 'package:wassel/features/order_details/presentation/views/widgets/order_details_body.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';

class OrdersDetailsListView extends StatelessWidget {
  const OrdersDetailsListView({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: order.items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        final cartItem = order.items[index];
        return OrderDetailsBody(cartItem: cartItem);
      },
    );
  }
}
