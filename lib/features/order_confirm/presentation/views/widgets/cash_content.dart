import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';

class CashContent extends StatelessWidget {
  const CashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldPrefix(
          labelText: 'رقم المحفظة (مثال: 01xxxxxxxxx)',
          prefixIconForLabel: Icon(Icons.phone_android),
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20),
        CustomElevatedButton(
          buttonText: 'حفظ رقم المحفظة',
          backgroundColor: Colors.blueGrey,
          onPressed: () {},
        ),
      ],
    );
  }
}
