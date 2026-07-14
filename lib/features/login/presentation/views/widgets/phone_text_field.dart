// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/validate_phone_number.dart';
import 'package:healthpassport/generated/l10n.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 8.w),
      child: TextFormField(
        validator: (value) {
          return validatePhoneNumer(
            value,
            phoneNumberRequired: S.of(context).phoneNumberRequired,
            invalidPhoneNumber: S.of(context).invalidPhoneNumber,
          );
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11),
        ],
        controller: controller,
        keyboardType: TextInputType.phone,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.right,
        maxLength: 11,
        style: GoogleFonts.cairo(fontSize: 20.sp, color: AppColors.ink),
        decoration: InputDecoration(
          counterText: '',
          hintText: S.of(context).phoneHint,
          hintStyle: GoogleFonts.cairo(color: AppColors.muted, fontSize: 18.sp),
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
