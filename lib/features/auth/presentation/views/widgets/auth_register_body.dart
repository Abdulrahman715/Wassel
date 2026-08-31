import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_fields.dart';
import 'package:wassel/features/auth/presentation/views/widgets/register_fields.dart';

class AuthRegisterBody extends StatelessWidget {
  const AuthRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: AuthFields(authFields: RegisterFields()),
    );
  }
}

