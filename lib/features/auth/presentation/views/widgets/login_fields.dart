import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/login_choises.dart';
import 'package:wassel/features/auth/presentation/views/widgets/password_auth_field.dart';
import 'package:wassel/features/auth/presentation/views/widgets/phone_auth_field.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 1. مفتاح الفورم للتحقق من الحقول
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // 👈 ربط الفورم بالمفتاح
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          PhoneAuthField(phoneController: _phoneController),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          PasswordAuthField(passwordController: _passwordController),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          LoginChoises(
            formKey: _formKey,
            phoneController: _phoneController,
            passwordController: _passwordController,
          ),
        ],
      ),
    );
  }
}
