import 'package:flutter/material.dart';

class CircleAavatarWidget extends StatelessWidget {
  final double sizeAvatar;

  const CircleAavatarWidget({super.key, required this.sizeAvatar});

  @override
  Widget build(BuildContext context) {
    return CircleAavatarWidget(sizeAvatar: sizeAvatar);
  }
}
