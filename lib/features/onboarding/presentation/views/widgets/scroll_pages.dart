import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wassel/core/utils/colors_data.dart';
import 'package:wassel/features/onboarding/data/onboarding_data.dart';

class ScrollPages extends StatelessWidget {
  const ScrollPages({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: OnboardingData.pages.length,
      effect: WormEffect(
        activeDotColor: ColorsData.primaryColor,
        dotColor: Colors.grey,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
