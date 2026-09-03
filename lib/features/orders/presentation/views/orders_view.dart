import 'package:flutter/material.dart';
import 'package:wassel/features/orders/presentation/views/widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrdersViewBody());
  }
}
