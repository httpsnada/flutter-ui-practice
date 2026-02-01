import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/app_assets.dart';
import 'package:onboarding/features/onboarding/screens/onboarding_layout.dart';

import '../../../core/constants/app_strings.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      image: AppImages.onboarding1,
      title: AppStrings.onboardingTitle1,
      subtitle: AppStrings.onboardingSubtitle1,
      currentIndex: 0,
    );
  }
}
