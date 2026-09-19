import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/coupon_code_section.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/order_confirm_app_bar.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/order_confirmation_button.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/order_summary_section.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/payment_method_section.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/recipient_details_section.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/user_address_section.dart';

class OrderConfirmViewBody extends StatelessWidget{
  const OrderConfirmViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          OrderConfirmAppBar(),
          UserAddressSection(),
          const SizedBox(height: 20),
          RecipientDetailsSection(),
          const SizedBox(height: 20),
          OrderSummarySection(),
          const SizedBox(height: 20),
          PaymentMethodSection(),
          const SizedBox(height: 20),
          CouponCodeSection(),
          const SizedBox(height: 20),
          OrderConfirmationButton(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}