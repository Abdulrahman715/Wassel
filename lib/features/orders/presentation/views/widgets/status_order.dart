import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/order_icons.dart';

class StatusOrder extends StatelessWidget {
  const StatusOrder({
    super.key,
    required this.order,
    required this.statusColor,
  });

  final OrderModel order;
  final Color statusColor;

  String _getTranslatedStatus(String status) {
    switch (status.toUpperCase()) {
      case 'CONFIRMED':
        return 'مؤكد';
      case 'ON PROCESS':
        return 'قيد التنفيذ';
      case 'SHIPPED':
        return 'تم الشحن';
      case 'DELIVERED':
        return 'تم التوصيل';
      default:
        return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _getTranslatedStatus(order.status),
          style: Styles.labelText.copyWith(color: statusColor),
        ),
        OrderIcons(),
      ],
    );
  }
}