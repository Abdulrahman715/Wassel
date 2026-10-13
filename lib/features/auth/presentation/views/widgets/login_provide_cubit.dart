
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/show_snack_bar_message.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:wassel/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginProvideCubit extends StatelessWidget {
  const LoginProvideCubit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showSnackBarMessage(
            context,
            snackBarMessage: 'تم تسجيل الدخول بنجاح',
          );
          GoRouter.of(context).go(AppRouter.kHomeView);
        } else if (state is LoginLoading) {
          showSnackBarMessage(
            context,
            snackBarMessage: 'جاري تسجيل الدخول...',
          );
        } else if (state is LoginFailure) {
          showSnackBarMessage(context, snackBarMessage: state.errorMessage);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            LoginViewBody(),
            if (state is LoginLoading)
              const Positioned.fill(
                child: ColoredBox(
                  color: Color(0x66000000),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        );
      },
    );
  }
}
