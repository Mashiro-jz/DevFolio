import 'package:devfolio/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme =>
      _buildTheme(AppColors.light, Brightness.light);
  static ThemeData get darkTheme =>
      _buildTheme(AppColors.dark, Brightness.dark);

  static ThemeData _buildTheme(AppColors colors, Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colors.background,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        primary: colors.primary,
        surface: colors.surface,
        onSurface: colors.textPrimary,
        seedColor: colors.primary,
        brightness: brightness,
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
    );
  }
}
