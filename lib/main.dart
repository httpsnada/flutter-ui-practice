import 'package:flutter/material.dart';
import 'package:onboarding/core/theme/app_theme.dart';
import 'package:onboarding/features/onboarding/screens/onboarding_screens.dart';

import 'app/theme_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ThemeNotifier.themeMode,
        builder: (context, mode, _) {
          return MaterialApp(
            title: 'Listenoryx',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode,
            home: OnboardingScreens(),
          );
        }
    );
  }
}
