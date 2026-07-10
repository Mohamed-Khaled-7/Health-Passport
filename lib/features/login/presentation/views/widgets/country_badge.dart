import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/generated/l10n.dart';

class CountryBadge extends StatelessWidget {
  const CountryBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 80.w,

      decoration: BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        border: Border.all(color: Colors.grey, width: 2.w),
      ),
      child: Center(
        child: Text(
          S.of(context).countryCode,
          style: GoogleFonts.cairo(
            fontSize: 16.spMax,
            fontWeight: FontWeight.w600,
            color: AppColors.muted,
          ),
        ),
      ),
    );
  }
}
