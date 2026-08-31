import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsData.primaryColor,
      body: SplashViewBody(),
    );
  }
}