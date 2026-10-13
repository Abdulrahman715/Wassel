import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/service/setup_service_locator.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/auth/data/repo/auth_repo_impl.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:wassel/features/auth/presentation/manager/cubit/register_cubit.dart';
import 'package:wassel/features/cart/presentation/view_models/cart_cubit/cart_cubit.dart';

void main() {
  setupServiceLocator(); //! استدعيت الدولاب الاوبجكتس
  runApp(WasselApp());
}

class WasselApp extends StatelessWidget {
  const WasselApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //! توفير CartCubit لجميع أجزاء التطبيق لانه يحتوي على بيانات مشتركة بين الصفحات
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(
          create: (context) => RegisterCubit(getIt.get<AuthRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily:
              'Cairo', // نصيحة: استخدم خط عربي مناسب مثل Cairo أو Tajawal
        ),
        //! لتغيير اتجاه التطبيق إلى اليمين لليسار
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
      ),
    );
  }
}
