import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';

class OnboardingButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onNext;
  final VoidCallback onFinish;

  const OnboardingButton({
    super.key,
    required this.isLastPage,
    required this.onNext,
    required this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isLastPage ? onFinish : onNext,
        child: Text(
          isLastPage
              ? AppStrings.getStartedButton
              : AppStrings.onboardingButton,
        ),
      ),
    );
  }
}
