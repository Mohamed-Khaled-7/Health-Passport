import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/generated/l10n.dart';

class WelcomeHero extends StatelessWidget {
  const WelcomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.teal,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48.r),
          bottomRight: Radius.circular(48.r),
        ),
      ),
      padding: EdgeInsets.only(top: 60.h, bottom: 40.h),
      child: Column(
        children: [
          Container(
            width: 90.w,
            height: 90.h,
            decoration: BoxDecoration(
              color: AppColors.card.withOpacity(0.15),
              borderRadius: BorderRadius.circular(26.r),
            ),
            child: Center(
              child: Text('🩺', style: TextStyle(fontSize: 44.sp)),
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            S.of(context).appName,
            style: GoogleFonts.cairo(
              fontSize: 26.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.card,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            S.of(context).appTagline,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 13.5.sp,
              color: AppColors.card.withOpacity(0.82),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
