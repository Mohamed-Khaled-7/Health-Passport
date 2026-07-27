import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthpassport/features/welcome/presentation/views/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const WelcomeViewBody());
  }
}
