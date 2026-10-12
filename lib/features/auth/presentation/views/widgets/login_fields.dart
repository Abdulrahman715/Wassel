import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_choises.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomTextField(
          mainText: 'الايميل',
          controller: _emailController,
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
        CustomTextField(
          mainText: 'الباسورد',
          controller: _passwordController,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        

        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        AuthChoises(
          mainOperation: 'تسجيل الدخول',
          onPrimaryPressed: () {
            // Handle primary button press
          },
          secondaryOperation: 'ليس لدى حساب , انشاء حساب ',
          onSecondaryPressed: () {
            GoRouter.of(context).push(AppRouter.kRegisterView);
          },
        ),
      ],
    );
  }
}
