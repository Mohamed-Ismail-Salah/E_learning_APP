import 'package:e_learning/Features/Authentication/presentation/view/accesspremissions_view.dart';
import 'package:e_learning/Features/Authentication/presentation/view/login_view.dart';
import 'package:e_learning/Features/Authentication/presentation/view/signup_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Splash_view.dart';

abstract class AppRouter {
  static const kAccessPremissionsView = '/AccessPremissionsView';
  static const kLoginView = '/LoginView';
  static const kSignupView = '/SignupView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kAccessPremissionsView,
        builder: (context, state) => const AccessPremissionsView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
