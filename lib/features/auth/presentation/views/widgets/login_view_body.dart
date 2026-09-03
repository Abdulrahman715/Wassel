import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_login_body.dart';
import 'package:wassel/features/auth/presentation/views/widgets/head_auth.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        HeadAuth(authType: 'تسجيل الدخول ', subText: 'مرحبا بعودتك فى واصل !'),

        SizedBox(height: 60),

        Expanded(child: AuthLoginBody()),
      ],
    );
  }
}
