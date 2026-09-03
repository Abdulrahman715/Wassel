import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_register_body.dart';
import 'package:wassel/features/auth/presentation/views/widgets/head_auth.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        HeadAuth(authType: 'انشاء حساب ', subText: 'مرحبا بك فى واصل !'),

        SizedBox(height: 60),

        Expanded(child: AuthRegisterBody()),
      ],
    );
  }
}
