import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/country_badge.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_button.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_container.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 80.h),
        child: Column(
          children: [
            const SizedBox(height: 50),
            LoginContainer(),
            const SizedBox(height: 30),
            Text(
              'أدخل رقم الهاتف',
              style: GoogleFonts.cairo(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                PhoneTextField(),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 20.w),
                  child: CountryBadge(),
                ),
              ],
            ),
            LoginButton(
              onPressed: () {
                // Handle login button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
