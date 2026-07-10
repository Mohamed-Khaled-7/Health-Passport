import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 60.h,
      textStyle: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
      ),
    );

    return Pinput(
      length: 4,
      keyboardType: TextInputType.number,
      defaultPinTheme: defaultPinTheme,

      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: const Color(0xffA6DDD0), width: 2),
      ),

      submittedPinTheme: defaultPinTheme,

      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,

      onCompleted: (pin) {
        debugPrint(pin);
      },
    );
  }
}
