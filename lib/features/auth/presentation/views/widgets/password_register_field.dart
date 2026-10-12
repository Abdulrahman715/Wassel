import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class PasswordRegisterField extends StatelessWidget {
  const PasswordRegisterField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mainText: 'الباسورد',
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'الرجاء إدخال كلمة المرور';
        }
        if (value.length < 6) {
          return 'كلمة المرور يجب ألا تقل عن 6 أحرف أو أرقام';
        }
        return null;
      },
    );
  }
}