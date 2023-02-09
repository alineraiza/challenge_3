import 'package:flutter/material.dart';

class CustomThemeColors extends ThemeExtension<CustomThemeColors> {
  final Color? primary;
  final Color? onPrimary;
  final Color? secondary;
  final Color? onSecondary;
  final Color? tertiary;
  final Color? background;
  final Color? onBackground;
  final Color? surface;
  final Color? outline;
  final Color? notification;
  final Color? status;

  CustomThemeColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.tertiary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.outline,
    required this.notification,
    required this.status,
  });

  @override
  ThemeExtension<CustomThemeColors> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomThemeColors> lerp(
    covariant ThemeExtension<CustomThemeColors>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
