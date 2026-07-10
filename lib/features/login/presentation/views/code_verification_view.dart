import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/code_verification_view_body.dart';

class CodeVerificationView extends StatelessWidget {
  const CodeVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeVerificationViewBody()
    );
  }
}
