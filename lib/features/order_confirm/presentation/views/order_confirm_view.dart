import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/order_confirm_view_body.dart';

class OrderConfirmView extends StatelessWidget{
  const OrderConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrderConfirmViewBody(),)
    );
  }
}