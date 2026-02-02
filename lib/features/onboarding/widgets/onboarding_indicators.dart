import 'package:flutter/material.dart';

import '../../../core/utils/spacing.dart';

class OnboardingIndicators extends StatelessWidget {
  final int currentIndex;
  final int totalPages;

  const OnboardingIndicators({
    super.key,
    required this.currentIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
          child: Icon(
            Icons.monetization_on,
            size: 24,
            color: currentIndex == index
                ? theme.colorScheme.primary
                : theme.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
