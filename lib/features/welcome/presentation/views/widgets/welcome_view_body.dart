import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wassel/core/utils/app_router.dart';
import 'package:wassel/core/utils/app_strings.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/core/widgets/custom_elevated_button.dart';
import 'package:wassel/features/welcome/presentation/views/widgets/welcome_content.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Center(child: Image.network(AssetData.welcomeImage)),
          ),

          WelcomeContent(),

          const Spacer(), // هذا سيقوم بدفع الزر للأسفل مهما كان طول الشاشة
          CustomElevatedButton(
            buttonText: AppStrings.getStartedButton,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kOnboardingView);
            },
          ),
        ],
      ),
    );
  }
}
