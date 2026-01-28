import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/core/theme/app_colors.dart';

import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: colorSchemeLight,
    scaffoldBackgroundColor: colorSchemeLight.background,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
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
        color: AppColors.textSecondary,
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
        color: colorSchemeLight.onBackground,
      ),
      bodyMedium: AppTextStyle.body.copyWith(color: AppColors.textSecondary),
      bodySmall: AppTextStyle.caption.copyWith(color: AppColors.textSecondary),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: colorSchemeDark,
    scaffoldBackgroundColor: colorSchemeDark.background,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
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
        color: AppColors.textSecondary,
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
        color: colorSchemeDark.onBackground,
      ),
      bodyMedium: AppTextStyle.body.copyWith(color: AppColors.textSecondary),
      bodySmall: AppTextStyle.caption.copyWith(color: AppColors.textSecondary),
    ),
  );
}

final colorSchemeLight = ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  background: AppColors.backgroundLight,
  error: AppColors.error,
  surface: AppColors.surfaceLight,
  onPrimary: AppColors.backgroundLight,
  onSurface: AppColors.textPrimaryLight,
  onBackground: AppColors.textPrimaryLight,
  onError: AppColors.error,
);

final colorSchemeDark = ColorScheme.dark(
  primary: AppColors.primary,
  secondary: AppColors.secondary,
  background: AppColors.backgroundDark,
  error: AppColors.error,
  surface: AppColors.surfaceDark,
  onPrimary: AppColors.backgroundLight,
  onSurface: AppColors.textPrimaryDark,
  onBackground: AppColors.textPrimaryDark,
  onError: AppColors.error,
);
