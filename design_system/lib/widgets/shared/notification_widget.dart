import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String numberNotification;

  const NotificationWidget({super.key, required this.numberNotification});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<CustomThemeColors>()!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: themeColors.notification,
      ),
      child: Text(numberNotification),
    );
  }
}
