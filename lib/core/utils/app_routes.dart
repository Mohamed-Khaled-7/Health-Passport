import 'package:go_router/go_router.dart';
import 'package:healthpassport/features/login/presentation/login_view.dart';
import 'package:healthpassport/features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  final String splashRoute = '/SplashView';
  final String loginRoute = '/LoginView';
  final routes = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/LoginView', builder: (context, state) => const LoginView()),
    ],
  );
}
