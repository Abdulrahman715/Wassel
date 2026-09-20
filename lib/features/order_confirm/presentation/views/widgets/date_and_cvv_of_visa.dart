import 'package:flutter/material.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';

class DateAndCvvOfVisa extends StatelessWidget {
  const DateAndCvvOfVisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Row (
      children: [
        Expanded(
          child: TextFormFieldPrefix(
            labelText: 'MM/YY',
            prefixIconForLabel: Icon(Icons.calendar_today),
            keyboardType: TextInputType.datetime,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextFormFieldPrefix(
            labelText: 'CVV',
            prefixIconForLabel: Icon(Icons.security),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
