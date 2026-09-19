import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/payment_container_style.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'طرق الدفع',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          PaymentContainerStyle(
            paymentMethod: 'بطاقة ائتمان',
            leadingIcon: const Icon(Icons.credit_card, color: Colors.blue , size: 30,),
            onTap: () {
              // Handle credit card payment method selection
            },
          ),
          const SizedBox(height: 15),
          PaymentContainerStyle(
            paymentMethod: 'محفظة رقمية',
            leadingIcon: const Icon(Icons.wallet, color: Colors.green, size: 30,),
            onTap: () {
              // Handle digital wallet payment method selection
            },
          ),
          const SizedBox(height: 15),
          PaymentContainerStyle(
            paymentMethod: 'الدفع عند الاستلام',
            leadingIcon: const Icon(Icons.local_shipping, color: Colors.orange, size: 30, ),
            onTap: () {
              // Handle cash on delivery payment method selection
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
