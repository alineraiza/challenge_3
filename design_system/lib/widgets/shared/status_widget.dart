import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<CustomThemeColors>()!;
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.024,
      width: size.width * 0.024,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: themeColors.status,
      ),
    );
  }
}
