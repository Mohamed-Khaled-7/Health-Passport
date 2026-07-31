// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/constant/app_keys.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/core/widgets/custom_snak_bar.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/features/login/presentation/cubit/bloc/login_bloc.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_button.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/otp_text_field.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/phone_icon.dart';
import 'package:healthpassport/generated/l10n.dart';

class CodeVerificationViewBody extends StatefulWidget {
  final String verificationId;
  const CodeVerificationViewBody({Key? key, required this.verificationId})
    : super(key: key);

  @override
  State<CodeVerificationViewBody> createState() =>
      _CodeVerificationViewBodyState();
}

class _CodeVerificationViewBodyState extends State<CodeVerificationViewBody> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state is VerifyOtpSuccess) {
          final doc = await FirebaseFirestore.instance
              .collection(AppKeys.firestoreCollection)
              .doc(uid)
              .get();
          if (doc.exists) {
            GoRouter.of(context).push(AppRoutes.homeRoute);
          } else {
            GoRouter.of(context).push(AppRoutes.onBoardingRoute);
          }
        }
        if (state is LoginFailure) {
          CustomSnakPar(
            context: context,
            message: state.message,
            backgroundColor: AppColors.coral,
            icons: Icons.error,
          );
        }
      },
      builder: (context, state) {
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
                    padding: EdgeInsets.only(top: 20.h, right: 30.w),
                    child: OtpTextField(controller: otpController),
                  ),
                  ValueListenableBuilder(
                    valueListenable: otpController,
                    builder: (context, value, child) {
                      return Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: LoginButton(
                          isLoading: state is LoginLoading,
                          isActive: otpController.text.length == 6,
                          onPressed: () {
                            context.read<LoginBloc>().add(
                              VerifyOtpEvent(
                                uid: uid,
                                otp: otpController.text,
                                verificationId: widget.verificationId,
                              ),
                            );
                          },
                          title: S.of(context).confirmAndLogin,
                        ),
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
