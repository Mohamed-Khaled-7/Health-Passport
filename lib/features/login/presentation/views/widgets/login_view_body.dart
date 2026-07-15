import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/features/login/presentation/cubit/bloc/login_bloc.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/convert_number_to_international.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/country_badge.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_button.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_icon.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_text_field.dart';
import 'package:healthpassport/generated/l10n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void submit() {
    if (!(formKey.currentState?.validate() ?? false)) return;

    final phoneNumber = convertNumberToInternational(controller.text);
    context.read<LoginBloc>().add(SendOtpEvent(phoneNumber: phoneNumber));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
        if (state is OtpSentSuccess) {
          GoRouter.of(
            context,
          ).push(AppRoutes.verification, extra: state.verificationId);
        }
      },
      builder: (context, state) {
        if (state is LoginLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                      Expanded(child: PhoneTextField(controller: controller)),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, right: 20.w),
                        child: CountryBadge(),
                      ),
                    ],
                  ),
                  ValueListenableBuilder<TextEditingValue>(
                    valueListenable: controller,
                    builder: (context, value, child) {
                      return LoginButton(
                        isLoading: state is LoginLoading,
                        isActive: controller.text.length == 11,
                        title: S.of(context).sendVerificationCode,
                        onPressed: submit,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
