
import 'package:flutter/material.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/visa_content.dart';

class VisaDetailsBody extends StatelessWidget {
  const VisaDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: VisaContent(),
    );
  }
}
