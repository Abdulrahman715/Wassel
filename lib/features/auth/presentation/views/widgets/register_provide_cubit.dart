
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/show_snack_bar_message.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/register_cubit.dart';
import 'package:wassel/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterProvideCubit extends StatelessWidget {
  const RegisterProvideCubit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          //! show the success message
          // إظهار رسالة نجاح والانتقال للصفحة الرئيسية
          showSnackBarMessage(
            context,
            snackBarMessage: 'تم انشاء الحساب بنجاح',
          );
          //! navigate to the home view
          GoRouter.of(context).go(AppRouter.kHomeView);
        } else if (state is RegisterFailure) {
          //! show the error message
          // إظهار رسالة خطأ
          showSnackBarMessage(context, snackBarMessage: state.errMessage);
        }
      },
      builder: (context, state) {
        // استخدام ModalProgressHUD لعرض مؤشر التحميل أثناء الـ Request
        return Stack(
          children: [
            RegisterViewBody(),
            if (state is RegisterLoading)
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
