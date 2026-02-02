import 'package:flutter/material.dart';
import 'package:onboarding/core/theme/app_text_styles.dart';
import 'package:onboarding/core/utils/spacing.dart';

class OnboardingLayout extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

  OnboardingLayout({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  State<OnboardingLayout> createState() => _OnboardingLayoutState();
}

class _OnboardingLayoutState extends State<OnboardingLayout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(widget.image, height: 350, fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.all(AppSpacing.xxl),
            child: Column(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
