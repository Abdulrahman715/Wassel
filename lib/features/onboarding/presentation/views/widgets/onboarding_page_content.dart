import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
import 'package:wassel/features/onboarding/data/models/onboarding_model.dart';
import 'package:wassel/features/onboarding/presentation/views/widgets/icon_style.dart';

class OnboardingPageContent extends StatelessWidget {
  const OnboardingPageContent({super.key, required this.onboardingModel});

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(onboardingModel.title, style: Styles.headMedium(context)),
        const SizedBox(height: 30),
        Text(
          onboardingModel.description,
          style: Styles.bodyMedium(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 60),

        IconStyle(onboardingModel: onboardingModel),
        const SizedBox(height: 20),
      ],
    );
  }
}
