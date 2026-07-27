import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/presentation/views/login_view.dart';
import 'package:healthpassport/features/login/presentation/views/verification_view.dart';
import 'package:healthpassport/generated/l10n.dart';
import 'package:healthpassport/main.dart';
import 'package:pinput/pinput.dart';

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
    await tester.pumpWidget(const HealthPassport());
    expect(find.text('سجلك الطبي معاك دايماً'), findsOneWidget);
  });
  testWidgets('after 2 seconds go to login', (tester) async {
    await tester.pumpWidget(const HealthPassport());
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.byType(LoginView), findsOneWidget);
  });
  group('Login View', () {
    testWidgets('title', (tester) async {
      await tester.pumpWidget(buildTestApp(home: const LoginView()));
      expect(find.text('أدخل رقم الهاتف'), findsOneWidget);
    });
    testWidgets('text field', (tester) async {
      await tester.pumpWidget(buildTestApp(home: const LoginView()));
      expect(find.byType(TextField), findsOneWidget);
    });
    testWidgets('button title', (tester) async {
      await tester.pumpWidget(buildTestApp(home: const LoginView()));
      expect(find.text('إرسال رمز التحقق'), findsOneWidget);
    });
    testWidgets('Button', (tester) async {
      await tester.pumpWidget(buildTestApp(home: const LoginView()));
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
  group('verification view', () {
    testWidgets('arroew back', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    });
    testWidgets('show change number', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.text('تغيير الرقم'), findsOneWidget);
    });
    testWidgets('title', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.text('رمز التحقق'), findsOneWidget);
    });

    testWidgets('sub title', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.text('تم إرسال رمز من 4 أرقام '), findsOneWidget);
    });
    testWidgets('pinput field', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.byType(Pinput), findsOneWidget);
    });
    testWidgets('button title', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.text('تأكيد والدخول'), findsOneWidget);
    });
    testWidgets('Button', (tester) async {
      await tester.pumpWidget(
        buildTestApp(home: const VerificationView('test_verification_id')),
      );
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
    
  });
  
}
