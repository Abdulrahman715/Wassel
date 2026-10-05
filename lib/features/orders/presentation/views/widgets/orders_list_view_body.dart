
import 'package:flutter/material.dart';
import 'package:wassel/features/orders/data/models/order_model.dart';
import 'package:wassel/features/orders/presentation/views/widgets/order_card.dart';

class OrdersListViewBody extends StatelessWidget {
  const OrdersListViewBody({
    super.key,
    required this.filteredOrders,
  });

  final List<OrderModel> filteredOrders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder:(context, index) => SizedBox(height: 30,),
      padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
      itemCount: filteredOrders.length,
      itemBuilder: (context, index) {
        final order = filteredOrders[index];
        return OrderCard(
          order: order,
          onTap: () {
            // لاحقاً: الانتقال لصفحة تفاصيل الطلب وتمرير الـ orderModel مع الـ extra
            // context.push(AppRouter.kOrderDetailsView, extra: order);
          },
        );
      },
    );
  }
}
