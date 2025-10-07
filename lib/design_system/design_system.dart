import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Centralized design tokens for the app's theme.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF4CAD73);
  static const Color textHighlight = Color(0xFF333333);
  static const Color textMuted = Color(0xFFBDBDBD);
  static const Color background = Color(0xFFFFFFFF);
}

ThemeData buildAppTheme() {
  final baseTextTheme = GoogleFonts.interTextTheme();

  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      background: AppColors.background,
      surface: AppColors.background,
    ),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: baseTextTheme.copyWith(
      displayLarge: baseTextTheme.displayLarge?.copyWith(
        color: AppColors.textHighlight,
      ),
      displayMedium: baseTextTheme.displayMedium?.copyWith(
        color: AppColors.textHighlight,
      ),
      displaySmall: baseTextTheme.displaySmall?.copyWith(
        color: AppColors.textHighlight,
      ),
      headlineLarge: baseTextTheme.headlineLarge?.copyWith(
        color: AppColors.textHighlight,
      ),
      headlineMedium: baseTextTheme.headlineMedium?.copyWith(
        color: AppColors.textHighlight,
      ),
      headlineSmall: baseTextTheme.headlineSmall?.copyWith(
        color: AppColors.textHighlight,
      ),
      titleLarge: baseTextTheme.titleLarge?.copyWith(
        color: AppColors.textHighlight,
      ),
      titleMedium: baseTextTheme.titleMedium?.copyWith(
        color: AppColors.textHighlight,
      ),
      titleSmall: baseTextTheme.titleSmall?.copyWith(
        color: AppColors.textHighlight,
      ),
      bodyLarge: baseTextTheme.bodyLarge?.copyWith(
        color: AppColors.textHighlight,
      ),
      bodyMedium: baseTextTheme.bodyMedium?.copyWith(
        color: AppColors.textHighlight,
      ),
      bodySmall: baseTextTheme.bodySmall?.copyWith(color: AppColors.textMuted),
      labelLarge: baseTextTheme.labelLarge?.copyWith(
        color: AppColors.textHighlight,
      ),
      labelMedium: baseTextTheme.labelMedium?.copyWith(
        color: AppColors.textMuted,
      ),
      labelSmall: baseTextTheme.labelSmall?.copyWith(
        color: AppColors.textMuted,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.textMuted,
      floatingLabelStyle: TextStyle(color: AppColors.textHighlight),
    ),
  );
}
