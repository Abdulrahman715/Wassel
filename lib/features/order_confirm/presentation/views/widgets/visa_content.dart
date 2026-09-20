
import 'package:flutter/material.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';
import 'package:wassel/features/order_confirm/presentation/views/widgets/date_and_cvv_of_visa.dart';

class VisaContent extends StatelessWidget {
  const VisaContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextFormFieldPrefix(
          labelText: 'رقم البطاقة',
          prefixIconForLabel: Icon(Icons.credit_card),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 10),
        DateAndCvvOfVisa(),
      ],
    );
  }
}
