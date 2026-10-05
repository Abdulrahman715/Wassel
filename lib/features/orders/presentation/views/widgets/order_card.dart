import 'package:flutter/material.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/order_card_body.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order, this.onTap});

  final OrderModel order;
  final void Function()? onTap;

  //! دالة لتحديد لون حالة الطلب
  Color _getStatusColor(String status) {
    switch (status.toUpperCase()) {
      case 'CONFIRMED':
        return Colors.redAccent;
      case 'ON PROCESS':
        return Colors.orange;
      case 'SHIPPED':
        return Colors.blue;
      case 'DELIVERED':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color statusColor = _getStatusColor(order.status);

    return GestureDetector(
      onTap: onTap,
      child: OrderCardBody(order: order, statusColor: statusColor),
    );
  }
}
