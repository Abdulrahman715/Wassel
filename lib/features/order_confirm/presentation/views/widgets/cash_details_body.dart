
import 'package:flutter/material.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';

class CashDetailsBody extends StatelessWidget {
  const CashDetailsBody({
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
      child: TextFormFieldPrefix(
        labelText: 'رقم المحفظة (مثال: 01xxxxxxxxx)',
        prefixIconForLabel: Icon(Icons.phone_android),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}