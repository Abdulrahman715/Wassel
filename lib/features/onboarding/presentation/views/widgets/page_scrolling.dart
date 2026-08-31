
import 'package:flutter/material.dart';
import 'package:wassel/features/onboarding/data/onboarding_data.dart';
import 'package:wassel/features/onboarding/presentation/views/widgets/onboarding_page_content.dart';

class PageScrolling extends StatelessWidget {
  const PageScrolling({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: OnboardingData.pages.length,
      itemBuilder: (context, index) {
        return OnboardingPageContent(
          onboardingModel: OnboardingData.pages[index],
        );
      },
    );
  }
}