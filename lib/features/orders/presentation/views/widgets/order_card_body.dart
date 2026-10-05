
import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/default_container_style.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/row_order_details.dart';
import 'package:wassel/features/orders/presentation/views/widgets/status_order.dart';

class OrderCardBody extends StatelessWidget {
  const OrderCardBody({
    super.key,
    required this.order,
    required this.statusColor,
  });

  final OrderModel order;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return DefaultContainerStyle(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // الحالة وأيقونات التتبع المصغرة في الأعلى
          StatusOrder(order: order, statusColor: statusColor),
    
          const Divider(height: 20, thickness: 1),
    
          // تفاصيل الطلب (Order ID, Deliver To, Total Payment)
          RowOrderDetails(order: order),
        ],
      ),
    );
  }
}