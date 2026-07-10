import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/country_badge.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_button.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_icon.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_text_field.dart';
import 'package:healthpassport/generated/l10n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            PhoneIcon(icon: Icon(LucideIcons.smartphone)),
            const SizedBox(height: 30),
            Text(
              S.of(context).enterPhoneNumber,
              style: GoogleFonts.cairo(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              textDirection: TextDirection.ltr,
              children: [
                Expanded(child: PhoneTextField()),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 20.w),
                  child: CountryBadge(),
                ),
              ],
            ),
            LoginButton(
              title: S.of(context).sendVerificationCode,
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.verification);
              },
            ),
          ],
        ),
      ),
    );
  }
}
