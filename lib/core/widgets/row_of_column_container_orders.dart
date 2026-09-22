
import 'package:flutter/material.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';

class RowBodyOfColumnContainerOrders extends StatelessWidget {
  const RowBodyOfColumnContainerOrders({
    super.key,
    required this.secondLabelText,
    required this.secondKeyboardType,
    required this.secondPrefixIconForLabel,
    required this.thirdLabelText,
    required this.thirdKeyboardType,
    required this.thirdPrefixIconForLabel,
  });

  final String secondLabelText;
  final TextInputType secondKeyboardType;
  final Icon? secondPrefixIconForLabel;
  final String thirdLabelText;
  final TextInputType thirdKeyboardType;
  final Icon? thirdPrefixIconForLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormFieldPrefix(
            labelText: secondLabelText,
            keyboardType: secondKeyboardType,
            prefixIconForLabel: secondPrefixIconForLabel,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextFormFieldPrefix(
            labelText: thirdLabelText,
            keyboardType: thirdKeyboardType,
            prefixIconForLabel: thirdPrefixIconForLabel,
          ),
        ),
      ],
    );
  }
}
