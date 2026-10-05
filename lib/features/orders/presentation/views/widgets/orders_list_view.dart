import 'package:flutter/material.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/orders_list_view_body.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
    required this.orders,
    required this.tabType,
  });

  final List<OrderModel> orders;
  final String tabType;

  @override
  Widget build(BuildContext context) {
    // تصفية الطلبات بناءً على الـ Tab
    final filteredOrders = orders.where((order) {
      if (tabType == 'all') {
        return true;
      } else if (tabType == 'on_process') {
        return order.status.toUpperCase() != 'Delivered';
      }else{
        // Previous (الطلبات المنتهية/الموصلة)
        return order.status.toUpperCase() == 'Delivered';
      }
    }).toList();

    //! لو مفيش اوردرات فى القسم ده
    if (filteredOrders.isEmpty) {
      return const Center(
        child: Text(
          'لا توجد طلبات في هذا القسم',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      );
    }

    //! لو فى اعرضها
    return OrdersListViewBody(filteredOrders: filteredOrders);
  }
}
