import 'package:flutter/material.dart';
import 'package:healthpassport/core/utils/app_routes.dart';

void main() {
  runApp(const HealthPassport());
}

class HealthPassport extends StatelessWidget {
  const HealthPassport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes().routes,
      title: 'Flutter Demo',
    );
  }
}
