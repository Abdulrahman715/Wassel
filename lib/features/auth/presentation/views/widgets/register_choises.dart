import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/register_cubit.dart';
import 'package:wassel/features/auth/presentation/views/widgets/auth_choises.dart';

class RegisterChoises extends StatelessWidget {
  const RegisterChoises({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController phoneController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
        _nameController = nameController,
        _phoneController = phoneController,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _phoneController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return AuthChoises(
      mainOperation: 'انشاء حساب',
      onPrimaryPressed: () {
        //! التحقق من صحة الحقول قبل إرسال البيانات للتسجيل
        if (_formKey.currentState!.validate()) {
          // لو كله تمام، ابعت للـ Cubit
          //! trigger the register event
          // هنا بنادي الـ Cubit عشان يبدأ عملية التسجيل
          BlocProvider.of<RegisterCubit>(context).registerCubit(
            name: _nameController.text.trim(),
            phone: _phoneController.text.trim(),
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
        }
      },
      secondaryOperation: 'لدى حساب بالفعل , تسجيل الدخول',
      onSecondaryPressed: () {
        GoRouter.of(context).push(AppRouter.kLoginView);
      },
    );
  }
}
