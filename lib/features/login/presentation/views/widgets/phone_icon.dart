import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PhoneIcon extends StatelessWidget {
  const PhoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(LucideIcons.smartphone),
      width: 56.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.tealLight,
        borderRadius: BorderRadius.circular(16.r),
      ),
    );
  }
}
