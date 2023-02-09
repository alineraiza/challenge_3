import 'package:design_system/theme/theme_extension/custom_theme_colors.dart';
import 'package:design_system/widgets/shared/circle_avatar.dart';
import 'package:design_system/widgets/shared/status_widget.dart';
import 'package:flutter/material.dart';

class CardUserWidget extends StatelessWidget {
  final CircleAavatarWidget circleAvatar;
  final StatusWidget status;
  final String name;
  final String phoneNumber;
  final String initialMessage;
  final String dateHours;

  const CardUserWidget({
    super.key,
    required this.circleAvatar,
    required this.name,
    required this.phoneNumber,
    required this.initialMessage,
    required this.dateHours,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.786,
      child: Row(
        children: [
          circleAvatar,
          Column(
            children: [
              Row(
                children: [
                  Text(name),
                  SizedBox(
                    width: size.width * 0.010,
                  ),
                  status
                ],
              ),
              Text(phoneNumber),
              Text(initialMessage),
            ],
          ),
          SizedBox(
            width: size.width * 0.308,
          ),
          Text(dateHours)
        ],
      ),
    );
  }
}
