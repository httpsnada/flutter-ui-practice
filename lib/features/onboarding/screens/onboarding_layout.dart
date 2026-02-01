import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/app_strings.dart';
import 'package:onboarding/core/theme/app_text_styles.dart';
import 'package:onboarding/core/utils/spacing.dart';
import 'package:onboarding/features/onboarding/widgets/onboarding_header.dart';

class OnboardingLayout extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final int currentIndex;

  OnboardingLayout({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.currentIndex,
  });

  @override
  State<OnboardingLayout> createState() => _OnboardingLayoutState();
}

class _OnboardingLayoutState extends State<OnboardingLayout> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OnboardingHeader(),

                Image.asset(widget.image, height: 350, fit: BoxFit.cover),

                Padding(
                  padding: const EdgeInsets.all(AppSpacing.xxl),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.title,
                            style: AppTextStyle.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          Text(
                            widget.subtitle,
                            style: AppTextStyle.body,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSpacing.lg),
                        ],
                      ),

                      SizedBox(height: AppSpacing.lg),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            size: 24,
                            color: widget.currentIndex == 0
                                ? theme.colorScheme.primary
                                : theme.colorScheme.secondary,
                          ),
                          SizedBox(width: AppSpacing.xs),

                          Icon(
                            Icons.monetization_on,
                            size: 24,
                            color: widget.currentIndex == 1
                                ? theme.colorScheme.primary
                                : theme.colorScheme.secondary,
                          ),
                          SizedBox(width: AppSpacing.xs),

                          Icon(
                            Icons.monetization_on,
                            size: 24,
                            color: widget.currentIndex == 2
                                ? theme.colorScheme.primary
                                : theme.colorScheme.secondary,
                          ),
                          SizedBox(width: AppSpacing.xs),
                        ],
                      ),

                      SizedBox(height: AppSpacing.xxl),

                      FilledButton(
                        onPressed: () {},
                        child: Text(AppStrings.onboardingButton),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
