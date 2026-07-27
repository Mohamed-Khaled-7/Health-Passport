import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthpassport/core/service/onboarding_service.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/features/splash/presentation/views/widgets/splash_container.dart';
import 'package:healthpassport/generated/l10n.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      final isLoggedIn = FirebaseAuth.instance.currentUser != null;
      final isOnboarding = HiveOnboardingService().isOnboarding();
      if (isLoggedIn && isOnboarding) {
        GoRouter.of(context).go(AppRoutes.homeRoute);
      } else {
        GoRouter.of(context).go(AppRoutes.welcomeRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: SplashContainer()),
        Text(
          S.of(context).appName,
          style: GoogleFonts.cairo(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.card,
          ),
        ),
        Text(
          S.of(context).appTagline,
          style: GoogleFonts.cairo(fontSize: 18, color: AppColors.card),
        ),
      ],
    );
  }
}
