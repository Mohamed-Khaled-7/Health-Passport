// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String? Function(String?)? validator;
  final int h;
  final String label;
  final int w;
  final TextEditingController controller;

  CustomTextField({
    Key? key,
    required this.validator,

    required this.label,
    required this.hint,
    required this.h,
    required this.w,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          label,
          style: GoogleFonts.cairo(
            fontSize: 14.sp,
            color: AppColors.textDark,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.h, left: 4.w, right: 4.w),
          child: TextFormField(
            validator: validator,
            controller: controller,

            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: GoogleFonts.cairo(fontSize: 20.sp, color: AppColors.ink),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.cairo(
                color: AppColors.muted,
                fontSize: 18.sp,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: w.w,
                vertical: h.h,
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
        ),
      ],
    );
  }
}
