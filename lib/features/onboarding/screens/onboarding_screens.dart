import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/app_assets.dart';
import 'package:onboarding/features/auth/screens/login_screen.dart';
import 'package:onboarding/features/onboarding/screens/onboarding_layout.dart';
import 'package:onboarding/features/onboarding/widgets/onboarding_button.dart';
import 'package:onboarding/features/onboarding/widgets/onboarding_indicators.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/utils/spacing.dart';
import '../widgets/onboarding_header.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;
  final int _numPages = 3;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            OnboardingHeader(),

            Expanded(
              child: PageView(
                controller: _pageViewController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  OnboardingLayout(
                    image: AppImages.onboarding1,
                    title: AppStrings.onboardingTitle1,
                    subtitle: AppStrings.onboardingSubtitle1,
                  ),

                  OnboardingLayout(
                    image: AppImages.onboarding2,
                    title: AppStrings.onboardingTitle2,
                    subtitle: AppStrings.onboardingSubtitle2,
                  ),

                  OnboardingLayout(
                    image: AppImages.onboarding3,
                    title: AppStrings.onboardingTitle3,
                    subtitle: AppStrings.onboardingSubtitle3,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                bottom: AppSpacing.xxl,
                left: AppSpacing.xxl,
                right: AppSpacing.xxl,
              ),
              child: Column(
                children: [
                  OnboardingIndicators(
                    currentIndex: _currentPageIndex,
                    totalPages: _numPages,
                  ),

                  SizedBox(height: AppSpacing.xxl),

                  OnboardingButton(
                    isLastPage: _currentPageIndex == _numPages - 1,
                    onNext: () {
                      _pageViewController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    onFinish: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
