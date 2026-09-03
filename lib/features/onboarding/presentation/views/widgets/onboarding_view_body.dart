import 'package:flutter/material.dart';
import 'package:wassel/features/onboarding/presentation/views/widgets/page_scrolling.dart';
import 'package:wassel/features/onboarding/presentation/views/widgets/scroll_pages.dart';
import 'package:wassel/features/onboarding/presentation/views/widgets/user_auth.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: PageScrolling(pageController: _pageController)),

        SizedBox(height: 20),

        ScrollPages(pageController: _pageController),

        // الزر الثابت في الأسفل
        UserAuth(),
      ],
    );
  }
}
