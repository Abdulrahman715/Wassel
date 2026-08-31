import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.mainText});

  final String mainText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: mainText,
        labelStyle: Styles.labelText,
        border: UnderlineInputBorder(),
      ),
    );
  }
}
