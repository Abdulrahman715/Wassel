import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';

class OrderConfirmationButton extends StatelessWidget {
  const OrderConfirmationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      buttonText: 'تأكيد الطلب',
      onPressed: () {
        // Handle order confirmation action
      },
    );
  }
}
