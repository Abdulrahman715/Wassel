import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class NameAuthField extends StatelessWidget {
  const NameAuthField({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mainText: 'الأسم',
      controller: _nameController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'الرجاء إدخال الاسم';
        }
        if (double.tryParse(value) != null) {
          return 'لا يمكن أن يكون الاسم أرقاماً فقط';
        }
        if (value.trim().length < 3) {
          return 'الاسم يجب ألا يقل عن 3 أحرف';
        }
        return null;
      },
      obscureText: false,
      keyboardType: TextInputType.name,
    );
  }
}
