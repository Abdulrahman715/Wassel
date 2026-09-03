import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorsData.primaryColor,
      body: SafeArea(bottom: false, child: RegisterViewBody()),
    );
  }
}
