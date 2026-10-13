
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_choises.dart';

class LoginChoises extends StatelessWidget {
  const LoginChoises({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController phoneController,
    required TextEditingController passwordController,
  }) : _formKey = formKey, _phoneController = phoneController, _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _phoneController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return AuthChoises(
      mainOperation: 'تسجيل الدخول',
      onPrimaryPressed: () {
        // 3. التحقق من الحقول قبل إرسال الطلب للـ API
        if (_formKey.currentState!.validate()) {
          BlocProvider.of<LoginCubit>(context).loginCubit(
            phone: _phoneController.text.trim(),
            password: _passwordController.text.trim(),
          );
        }
      },
      secondaryOperation: 'ليس لدى حساب , انشاء حساب ',
      onSecondaryPressed: () {
        GoRouter.of(context).push(AppRouter.kRegisterView);
      },
    );
  }
}