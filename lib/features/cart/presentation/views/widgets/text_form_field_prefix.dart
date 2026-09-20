import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class TextFormFieldPrefix extends StatelessWidget {
  const TextFormFieldPrefix({
    super.key,
    required this.labelText,
    this.prefixIconForLabel,
    required this.keyboardType,
  });

  final String labelText;
  final Icon? prefixIconForLabel;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Styles.textStyle16,
        prefixIcon: prefixIconForLabel,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.green),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
