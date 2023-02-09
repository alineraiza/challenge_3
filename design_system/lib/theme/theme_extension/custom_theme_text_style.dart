import 'package:flutter/material.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodySmall;

  CustomTextStyle({
    required this.titleMedium,
    required this.titleSmall,
    required this.bodySmall,
  });

  @override
  ThemeExtension<CustomTextStyle> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomTextStyle> lerp(
    covariant ThemeExtension<CustomTextStyle>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
