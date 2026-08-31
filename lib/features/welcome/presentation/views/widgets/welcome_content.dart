import 'package:flutter/material.dart';
import 'package:wassel/core/utils/app_strings.dart';
import 'package:wassel/core/utils/asset_data.dart';
import 'package:wassel/core/utils/styles.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        const Text(
            AppStrings.welcomeMessage,
            textAlign: TextAlign.center,
            style: Styles.textStyle30,
          ),
        Image.network(AssetData.subLogo),
        const SizedBox(height: 20),
        Text(
          AppStrings.welcomeDescription,
          textAlign: TextAlign.center,
          style: Styles.textStyle20,
        ),
      ],
    );
  }
}