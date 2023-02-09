import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:design_system/theme/theme_extension/custom_theme_text_style.dart';
import 'package:design_system/widgets/shared/notification_widget.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  final Widget icon;
  final String title;
  final NotificationWidget numberNotification;
  bool isSelected = false;

  FilterWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.numberNotification,
    this.isSelected = false,
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<CustomThemeColors>()!;
    final themeTextstyle = Theme.of(context).extension<CustomTextStyle>()!;
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.036),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color:
              widget.isSelected ? themeColors.primary : themeColors.background,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon,
            if (widget.title != null) ...{
              SizedBox(
                width: size.width * 0.032,
              ),
              Text(
                widget.title,
                style: widget.isSelected
                    ? themeTextstyle.titleMedium.copyWith(
                        color: themeColors.onPrimary,
                      )
                    : themeTextstyle.titleMedium
                        .copyWith(color: themeColors.onBackground),
              ),
            }
          ],
        ),
      ),
    );
  }
}
