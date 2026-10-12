import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class EmailRegisterField extends StatelessWidget {
  const EmailRegisterField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mainText: 'الايميل',
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'الرجاء إدخال البريد الإلكتروني';
        }
        // Regex للتحقق من صحة الإيميل
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(value.trim())) {
          return 'البريد الإلكتروني غير صالح (تأكد من وجود @ و النطاق)';
        }
        return null;
      },
      obscureText: false,
    );
  }
}