import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpassport/features/welcome/presentation/views/widgets/welcome_feature_item.dart';
import 'package:healthpassport/features/welcome/presentation/views/widgets/welcome_hero.dart';
import 'package:healthpassport/features/welcome/presentation/views/widgets/welocme_button.dart';
import 'package:healthpassport/generated/l10n.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WelcomeHero(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h),
            child: Column(
              children: [
                WelcomeFeatureItem(
                  icon: '📋',
                  title: S.of(context).welcomeFeature1Title,
                  subtitle: S.of(context).welcomeFeature1Sub,
                ),
                SizedBox(height: 18.h),
                WelcomeFeatureItem(
                  icon: '⏰',
                  title: S.of(context).welcomeFeature2Title,
                  subtitle: S.of(context).welcomeFeature2Sub,
                ),
                SizedBox(height: 18.h),
                WelcomeFeatureItem(
                  icon: '📤',
                  title: S.of(context).welcomeFeature3Title,
                  subtitle: S.of(context).welcomeFeature3Sub,
                ),
                SizedBox(height: 18.h),
                WelcomeFeatureItem(
                  icon: '🔒',
                  title: S.of(context).welcomeFeature4Title,
                  subtitle: S.of(context).welcomeFeature4Sub,
                ),
              ],
            ),
          ),
        ),
        const WelcomeButtons(),
      ],
    );
  }
}