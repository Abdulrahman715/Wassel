import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.mainText,
    required this.controller,
    required this.obscureText,
    this.keyboardType, 
    this.validator,
  });

  final String mainText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator; // استقبال الشروط لكل حقل

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator, // استقبال الشروط لكل حقل
      // validator: (value) {
      //   if (value == null || value.trim().isEmpty) {
      //     return 'الرجاء إدخال $mainText';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: mainText,
        labelStyle: Styles.labelText,
        border: UnderlineInputBorder(),
        errorStyle: Styles.errorText,
      ),
    );
  }
}
