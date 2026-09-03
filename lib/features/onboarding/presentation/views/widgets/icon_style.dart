import 'package:flutter/material.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/onboarding/data/models/onboarding_model.dart';

class IconStyle extends StatelessWidget {
  const IconStyle({super.key, required this.onboardingModel});

  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: ColorsData.iconBackground,
        borderRadius: BorderRadius.circular(150),
      ),
      child: Image.network(
        onboardingModel.imagePath,
        height: MediaQuery.of(context).size.height * 0.2,
      ),
    );
  }
}
