import 'package:flutter/material.dart';
import 'package:onboarding/app/theme_notifier.dart';
import 'package:onboarding/core/utils/spacing.dart';

enum AppThemeMode { light, dark }

class ThemeDropDown extends StatelessWidget {
  ThemeDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ValueListenableBuilder(
      valueListenable: ThemeNotifier.themeMode,
      builder: (context, mode, child) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(AppSpacing.xxl),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<ThemeMode>(
              dropdownColor: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(AppSpacing.xxl),
              elevation: 2,
              value: mode,
              icon: Icon(
                Icons.expand_more,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              items: [
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Icon(Icons.sunny, color: Color(0XFFFCAC16), size: 20),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Icon(
                    Icons.dark_mode,
                    color: Color(0XFF82B5B2),
                    size: 20,
                  ),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  ThemeNotifier.changeTheme(value);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
