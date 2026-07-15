import 'package:flutter/material.dart';
import 'package:healthpassport/features/login/presentation/views/widgets/code_verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView(this.verificationId, {super.key});
  final verificationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeVerificationViewBody(verificationId: verificationId),
    );
  }
}
