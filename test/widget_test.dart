import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/presentation/views/login_view.dart';
import 'package:healthpassport/generated/l10n.dart';
import 'package:healthpassport/main.dart';

Widget buildTestApp({required Widget home}) {
  return ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    builder: (context, child) {
      return MaterialApp(
        locale: const Locale('ar'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: home,
      );
    },
  );
}

void main() {
  testWidgets('Health Passport', (tester) async {
    //هنا اول حاجه هنشغل الابليكيشن
    await tester.pumpWidget(const HealthPassport());
    // بعد كدا هندور علي التكست
    expect(find.text('سجلك الطبي معاك دايماً'), findsOneWidget);
  });
  testWidgets('after 2 seconds go to login', (tester) async {
    await tester.pumpWidget(const HealthPassport());
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.byType(LoginView), findsOneWidget);
  });
}
