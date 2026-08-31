import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_choises.dart';
import 'package:wassel/features/auth/presentation/views/widgets/custom_text_field.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(mainText: 'الأسم'),
        SizedBox(height: 30),
        CustomTextField(mainText: 'رقم التليفون'),
        SizedBox(height: 30),
        CustomTextField(mainText: 'الايميل'),
        SizedBox(height: 30),
        CustomTextField(mainText: 'الباسورد'),

        SizedBox(height: 60),
        AuthChoises(
          mainOperation: 'انشاء حساب',
          onPrimaryPressed: () {
            GoRouter.of(context).push(AppRouter.kHomeView);
          },
          secondaryOperation: 'لدى حساب بالفعل , تسجيل الدخول',
          onSecondaryPressed: () {
            GoRouter.of(context).push(AppRouter.kLoginView);
          },
        ),
      ],
    );
  }
}
