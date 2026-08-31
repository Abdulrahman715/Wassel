import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/asset_data.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToNextPage();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation, 
          child: Center(child: Image.network(AssetData.splashLogo)),
        );
      }
    );
  }

  void initSlidingAnimation() {
     // 1. تعريف الـ Controller
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    
    // 2. تعريف حركة اللوجو (من أسفل للأعلى مثلاً)
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    
    // 3. شغلته
    animationController.forward();
  }

  // 3. الانتقال لصفحة تسجيل الدخول بعد انتهاء الأنيميشن
  void navigateToNextPage() {
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      GoRouter.of(context).push(AppRouter.kWelcomeView);
    });
  }
}
