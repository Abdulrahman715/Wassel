import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_container_style.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_fields.dart';
import 'package:wassel/features/auth/presentation/views/widgets/register_fields.dart';

class AuthRegisterBody extends StatelessWidget {
  const AuthRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthContinerStyle(
      child: AuthFields(authFields: RegisterFields()),
    );
  }
}
