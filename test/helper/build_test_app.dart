// test/test_helper.dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:healthpassport/generated/l10n.dart';

Widget buildTestApp({required Widget home}) {
  final testRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, __) => home),
      GoRoute(path: '/LoginView', builder: (_, __) => const Scaffold()),
      GoRoute(
        path: '/CodeVerificationViewBody',
        builder: (_, __) => const Scaffold(),
      ),
      GoRoute(path: '/HomeView', builder: (_, __) => const Scaffold()),
      GoRoute(path: '/OnBoardingView', builder: (_, __) => const Scaffold()),
    ],
  );

  return ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    builder: (context, child) {
      return MaterialApp.router(
        locale: const Locale('ar'),
        routerConfig: testRouter,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      );
    },
  );
}
