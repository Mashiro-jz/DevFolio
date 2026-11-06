import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color primary;
  final Color primaryLight;
  final Color statusGreenText;
  final Color statusGreenBg;
  final Color background;
  final Color surface;
  final Color surfaceVariant;
  final Color primaryContainer;
  final Color textPrimary;
  final Color textSecondary;
  final Color border;

  const AppColors({
    required this.primary,
    required this.primaryLight,
    required this.statusGreenText,
    required this.statusGreenBg,
    required this.background,
    required this.surface,
    required this.surfaceVariant,
    required this.primaryContainer,
    required this.textPrimary,
    required this.textSecondary,
    required this.border,
  });

  // Light Mode
  static const light = AppColors(
    primary: Color(0xFF584CF4),
    primaryLight: Color(0xFF7B61FF),
    statusGreenText: Color(0xFF16A34A),
    statusGreenBg: Color(0xFFE6F4EA),
    background: Color(0xFFF6F7FB),
    surface: Color(0xFFFFFFFF),
    surfaceVariant: Color(0xFFEEF0F8),
    primaryContainer: Color(0xFFEAE8FF),
    textPrimary: Color(0xFF0F172A),
    textSecondary: Color(0xFF475569),
    border: Color(0xFFE2E8F0),
  );

  // Dark Mode
  static const dark = AppColors(
    primary: Color(0xFF584CF4),
    primaryLight: Color(0xFF7B61FF),
    statusGreenText: Color(0xFF4ADE80),
    statusGreenBg: Color(0xFF0F291E),
    background: Color(0xFF090C15),
    surface: Color(0xFF121726),
    surfaceVariant: Color(0xFF1C2237),
    primaryContainer: Color(0xFF1A1836),
    textPrimary: Color(0xFFF8FAFC),
    textSecondary: Color(0xFF94A3B8),
    border: Color(0xFF1E293B),
  );

  @override
  AppColors copyWith({
    Color? primary,
    Color? primaryLight,
    Color? statusGreenText,
    Color? statusGreenBg,
    Color? background,
    Color? surface,
    Color? surfaceVariant,
    Color? primaryContainer,
    Color? textPrimary,
    Color? textSecondary,
    Color? border,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      statusGreenText: statusGreenText ?? this.statusGreenText,
      statusGreenBg: statusGreenBg ?? this.statusGreenBg,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      border: border ?? this.border,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      statusGreenText: Color.lerp(statusGreenText, other.statusGreenText, t)!,
      statusGreenBg: Color.lerp(statusGreenBg, other.statusGreenBg, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceVariant: Color.lerp(surfaceVariant, other.surfaceVariant, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      border: Color.lerp(border, other.border, t)!,
    );
  }
}

// eg. context.colors.primary
extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColors get colors => theme.extension<AppColors>()!;
}
