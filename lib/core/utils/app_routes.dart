import 'package:go_router/go_router.dart';
import 'package:healthpassport/features/home/presentation/views/home_view.dart';
import 'package:healthpassport/features/login/presentation/views/verification_view.dart';
import 'package:healthpassport/features/login/presentation/views/login_view.dart';
import 'package:healthpassport/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static final String splashRoute = '/SplashView';
  static final String loginRoute = '/LoginView';
  static final String verification = '/CodeVerificationViewBody';
  static final String homeRoute = '/HomeView';
  static final routes = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: AppRoutes.loginRoute,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.verification,
        builder: (context, state) {
          final verificationId = state.extra as String;

          return VerificationView(verificationId);
        },
      ),
      GoRoute(
        path: AppRoutes.homeRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
