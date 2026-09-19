import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_app_bar.dart';

class OrderConfirmAppBar extends StatelessWidget {
  const OrderConfirmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'اتمام الطلب ',
      onBackToHome: () => Navigator.pop(context),
    );
  }
}
