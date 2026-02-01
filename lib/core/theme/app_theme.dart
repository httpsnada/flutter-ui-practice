import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/core/theme/app_colors.dart';

import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: colorSchemeLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorSchemeLight.surface,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: colorSchemeLight.onSurfaceVariant,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      contentPadding: EdgeInsets.all(16),
      prefixIconColor: colorSchemeLight.primary,
      suffixIconColor: colorSchemeLight.primary,

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeLight.primary, width: 1.5),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeLight.error, width: 1.5),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeLight.error, width: 1.5),
      ),
    ),

    textTheme: TextTheme(
      titleLarge: AppTextStyle.titleLarge.copyWith(
        color: colorSchemeLight.onSurface,
      ),
      bodyMedium: AppTextStyle.body.copyWith(
          color: colorSchemeLight.onSurfaceVariant),
      bodySmall: AppTextStyle.caption.copyWith(
          color: colorSchemeLight.onSurfaceVariant),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: colorSchemeDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorSchemeDark.surface,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: colorSchemeDark.onSurfaceVariant,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      contentPadding: EdgeInsets.all(16),
      prefixIconColor: colorSchemeDark.primary,
      suffixIconColor: colorSchemeDark.primary,

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeDark.primary, width: 1.5),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeDark.error, width: 1.5),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorSchemeDark.error, width: 1.5),
      ),
    ),

    textTheme: TextTheme(
      titleLarge: AppTextStyle.titleLarge.copyWith(
        color: colorSchemeDark.onSurface,
      ),
      bodyMedium: AppTextStyle.body.copyWith(
          color: colorSchemeDark.onSurfaceVariant),
      bodySmall: AppTextStyle.caption.copyWith(
          color: colorSchemeDark.onSurfaceVariant),
    ),
  );
}

final colorSchemeLight = ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  error: AppColors.error,
  surface: AppColors.surfaceLight,
  onPrimary: AppColors.backgroundLight,
  onSurface: AppColors.textPrimaryLight,
  onSurfaceVariant: AppColors.textSecondary,
);

final colorSchemeDark = ColorScheme.dark(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  error: AppColors.error,
  surface: AppColors.surfaceDark,
  onPrimary: AppColors.backgroundLight,
  onSurface: AppColors.textPrimaryDark,
  onSurfaceVariant: AppColors.textSecondary,
);
