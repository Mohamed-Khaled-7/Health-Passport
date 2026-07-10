import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/theme/app_color.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 10.w),
      child: TextField(
        keyboardType: TextInputType.phone,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.right,
        maxLength: 11,
        style: GoogleFonts.inter(fontSize: 20.sp, color: AppColors.ink),
        decoration: InputDecoration(
          counterText: '',
          hintText: '01X XXXX XXXX',
          hintStyle: GoogleFonts.inter(
            color: AppColors.muted,
            fontSize: 18.sp,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 16.h,
          ),
    
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey, width: 1.5.w),
          ),
    
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.muted, width: 2.w),
          ),
        ),
      ),
    );
  }
}
