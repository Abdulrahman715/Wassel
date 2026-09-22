import 'package:flutter/material.dart';
import 'package:wassel/core/widgets/column_body_of_container_orders.dart';

class ContainerStyleOfOrderChangeOptions extends StatelessWidget {
  const ContainerStyleOfOrderChangeOptions({
    super.key,
    required this.firstLabelText,
    required this.firstKeyboardType,
    this.firstPrefixIconForLabel,
    required this.secondLabelText,
    required this.secondKeyboardType,
    this.secondPrefixIconForLabel,
    required this.thirdLabelText,
    required this.thirdKeyboardType,
    this.thirdPrefixIconForLabel,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: ColumnBodyOfContainerOrder(
          firstLabelText: firstLabelText,
          firstKeyboardType: firstKeyboardType,
          firstPrefixIconForLabel: firstPrefixIconForLabel,
          secondLabelText: secondLabelText,
          secondKeyboardType: secondKeyboardType,
          secondPrefixIconForLabel: secondPrefixIconForLabel,
          thirdLabelText: thirdLabelText,
          thirdKeyboardType: thirdKeyboardType,
          thirdPrefixIconForLabel: thirdPrefixIconForLabel,
          buttonText: buttonText,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
