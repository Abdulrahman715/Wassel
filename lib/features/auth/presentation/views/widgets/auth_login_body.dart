import 'package:flutter/material.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_fields.dart';
import 'package:wassel/features/auth/presentation/views/widgets/login_fields.dart';

class AuthLoginBody extends StatelessWidget {
  const AuthLoginBody({super.key});

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
      child: AuthFields(authFields: LoginFields()),
    );
  }
}
