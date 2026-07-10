// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:healthpassport/core/theme/app_color.dart';

class PhoneIcon extends StatefulWidget {
  const PhoneIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final Icon icon;

  @override
  State<PhoneIcon> createState() => _PhoneIconState();
}

class _PhoneIconState extends State<PhoneIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.icon,
      width: 56.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: AppColors.tealLight,
        borderRadius: BorderRadius.circular(16.r),
      ),
    );
  }
}
