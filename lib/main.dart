import 'package:flutter/material.dart';
import 'package:wassel/core/service/setup_service_locator.dart';
import 'package:wassel/core/utils/app_router.dart';

void main() {
  setupServiceLocator(); //! استدعيت الدولاب الاوبجكتس
  runApp(WasselApp());
}

class WasselApp extends StatelessWidget {
  const WasselApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo', // نصيحة: استخدم خط عربي مناسب مثل Cairo أو Tajawal
      ),
      //! لتغيير اتجاه التطبيق إلى اليمين لليسار
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
    );
  }
}
