import 'package:flutter/material.dart';
import 'package:healthpassport/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const HealthPassport());
}

class HealthPassport extends StatelessWidget {
  const HealthPassport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      title: 'Flutter Demo',
    );
  }
}
