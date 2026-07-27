import 'package:flutter/material.dart';
import 'package:healthpassport/core/theme/app_color.dart';

class AvatarIcon extends StatelessWidget {
  const AvatarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 88,
        height: 88,
        decoration: BoxDecoration(
          color: AppColors.lightGreenBg,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.person,
          size: 44,
          color: AppColors.purpleIcon,
        ),
      ),
    );
  }
}
