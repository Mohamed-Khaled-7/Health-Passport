import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_button.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/otp_text_field.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_icon.dart';
import 'package:healthpassport/generated/l10n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CodeVerificationViewBody extends StatelessWidget {
  const CodeVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80.h, left: 20.w),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, size: 24.sp),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                    Text(
                      S.of(context).changePhoneNumber,
                      style: GoogleFonts.cairo(fontSize: 20.sp),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              PhoneIcon(icon: Icon(LucideIcons.messageSquare)),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  S.of(context).verificationCode,
                  style: GoogleFonts.cairo(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                S.of(context).verificationCodeSent,
                style: GoogleFonts.cairo(fontSize: 14.sp),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: OtpTextField(),
              ),
              LoginButton(
                onPressed: () {},
                title: S.of(context).confirmAndLogin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
