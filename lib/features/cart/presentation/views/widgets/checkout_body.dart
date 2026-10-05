import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';
import 'package:wassel/features/cart/presentation/views/widgets/total_cart_price.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({
    super.key,
    required this.total,
  });

  final double total;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // السعر
        TotalCartPrice(total: total),
        const SizedBox(height: 20),
        // زرار
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.08,
          child: CustomElevatedButton(
            buttonText: "اتمام الطلب",
            backgroundColor: Colors.black,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kOrderConfirmView);
            },
          ),
        ),
      ],
    );
  }
}
