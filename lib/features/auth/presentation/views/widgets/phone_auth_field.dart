import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class PhoneAuthField extends StatelessWidget {
  const PhoneAuthField({
    super.key,
    required TextEditingController phoneController,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      mainText: 'رقم التليفون',
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'الرجاء إدخال رقم التليفون';
        }
        // Regex للتأكد أنه رقم موبايل مصري صحيح
        final phoneRegex = RegExp(r'^01[0125][0-9]{8}$');
        if (!phoneRegex.hasMatch(value.trim())) {
          return 'رقم التليفون غير صحيح (يجب أن يبدأ بـ 01 ويتكون من 11 رقماً)';
        }
        return null;
      },
      obscureText: false,
    );
  }
}
