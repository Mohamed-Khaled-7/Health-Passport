import 'package:flutter/material.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LoginViewBody(),
      backgroundColor: AppColors.card,
    );
  }
}
