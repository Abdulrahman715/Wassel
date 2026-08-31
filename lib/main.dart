import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/features/home/data/repo/home_repo_impl.dart';
import 'package:wassel/features/home/presentation/manager/cubit/home_cubit/home_cubit.dart';

void main() {
  runApp(WasselApp());
}

class WasselApp extends StatelessWidget {
  const WasselApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit(HomeRepoImpl()))
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
