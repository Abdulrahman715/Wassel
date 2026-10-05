
import 'package:flutter/material.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/order_info_column.dart';

class RowOrderDetails extends StatelessWidget {
  const RowOrderDetails({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderInfoColumn(title: 'Order ID', value: order.orderId),
        OrderInfoColumn(title: 'Deliver To', value: order.deliverTo),
        OrderInfoColumn(
          title: 'Total Payment',
          value: '${order.totalPayment} ج.م',
        ),
      ],
    );
  }
}
