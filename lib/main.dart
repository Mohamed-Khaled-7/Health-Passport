import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpassport/core/utils/app_routes.dart';

void main() {
  runApp(const HealthPassport());
}

class HealthPassport extends StatelessWidget {
  const HealthPassport({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoutes.routes,
          title: 'Health Passport',
        );
      },
    );
  }
}