import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/app_assets.dart';
import 'package:onboarding/features/onboarding/widgets/theme_drop_down.dart';

class OnboardingHeader extends StatelessWidget {
  OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    String logoAsset = isDarkMode ? AppImages.logoDark : AppImages.logoLight;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(opacity: 0, child: SizedBox(width: 80)),

        Image.asset(logoAsset, height: 26, fit: BoxFit.cover),

        SizedBox(width: 80, child: ThemeDropDown()),
      ],
    );
  }
}
