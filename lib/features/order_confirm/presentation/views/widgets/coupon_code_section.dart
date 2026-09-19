import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class CouponCodeSection extends StatelessWidget {
  const CouponCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'هل لديك كوبون ؟',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            mainText: 'أدخل رمز الكوبون',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
