import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/email_register_field.dart';
import 'package:wassel/features/auth/presentation/views/widgets/name_register_field.dart';
import 'package:wassel/features/auth/presentation/views/widgets/password_register_field.dart';
import 'package:wassel/features/auth/presentation/views/widgets/phone_register_field.dart';
import 'package:wassel/features/auth/presentation/views/widgets/register_choises.dart';

class RegisterFields extends StatefulWidget {
  const RegisterFields({super.key});

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //! 1. مفتاح الـ Form للتحقق من الحقول
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //? 2. تغليف الـ Column بـ Form وإعطاؤه الـ formKey
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. فحص الاسم (يجب ألا يكون فارغاً وألا يكون أرقاماً فقط)
          NameRegisterField(nameController: _nameController),
          SizedBox(height: 30),
          // 2. فحص رقم التليفون (يجب أن يكون رقم مصري صحيح 11 رقم ويبدأ بـ 01)
          PhoneRegisterField(phoneController: _phoneController),
          SizedBox(height: 30),
          // 3. فحص الإيميل (يجب أن يحتوي على @ و .com مثلاً)
          EmailRegisterField(emailController: _emailController),
          SizedBox(height: 30),
          // 4. فحص الباسورد (أقل حاجة 6 خانات)
          PasswordRegisterField(passwordController: _passwordController),

          SizedBox(height: 60),
          RegisterChoises(
            formKey: _formKey,
            nameController: _nameController,
            phoneController: _phoneController,
            emailController: _emailController,
            passwordController: _passwordController,
          ),
        ],
      ),
    );
  }
}