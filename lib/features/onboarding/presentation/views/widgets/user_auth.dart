import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomElevatedButton(
            buttonText: 'انشاء حساب ',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kRegisterView);
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
            },
            child: const Text(
              'لدى حساب بالفعل , تسجيل الدخول ',
              style: Styles.textStyle20,
            ),
          ),
        ],
      ),
    );
  }
}
