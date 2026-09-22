import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';
import 'package:wassel/core/widgets/row_of_column_container_orders.dart';
import 'package:wassel/features/cart/presentation/views/widgets/text_form_field_prefix.dart';

class ColumnBodyOfContainerOrder extends StatelessWidget {
  const ColumnBodyOfContainerOrder({
    super.key,
    required this.firstLabelText,
    required this.firstKeyboardType,
    required this.firstPrefixIconForLabel,
    required this.secondLabelText,
    required this.secondKeyboardType,
    required this.secondPrefixIconForLabel,
    required this.thirdLabelText,
    required this.thirdKeyboardType,
    required this.thirdPrefixIconForLabel,
    required this.buttonText,
    this.onPressed,
  });

  final String firstLabelText;
  final TextInputType firstKeyboardType;
  final Icon? firstPrefixIconForLabel;
  final String secondLabelText;
  final TextInputType secondKeyboardType;
  final Icon? secondPrefixIconForLabel;
  final String thirdLabelText;
  final TextInputType thirdKeyboardType;
  final Icon? thirdPrefixIconForLabel;
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldPrefix(
          labelText: firstLabelText,
          keyboardType: firstKeyboardType,
          prefixIconForLabel: firstPrefixIconForLabel,
        ),
        SizedBox(height: 10),
        RowBodyOfColumnContainerOrders(
          secondLabelText: secondLabelText,
          secondKeyboardType: secondKeyboardType,
          secondPrefixIconForLabel: secondPrefixIconForLabel,
          thirdLabelText: thirdLabelText,
          thirdKeyboardType: thirdKeyboardType,
          thirdPrefixIconForLabel: thirdPrefixIconForLabel,
        ),

        SizedBox(height: 20),
        CustomElevatedButton(
          buttonText: buttonText,
          onPressed: onPressed,
          backgroundColor: Colors.blueGrey,
        ),
      ],
    );
  }
}
