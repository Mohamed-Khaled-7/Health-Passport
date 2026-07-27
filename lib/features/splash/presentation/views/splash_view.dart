import 'package:flutter/material.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: SplashViewBody(),
    );
  }
}