import 'package:doc_link_project/features/auth/forget_password/presentation/views/forget_password_view.dart';
import 'package:doc_link_project/features/auth/login/presentation/views/login_view.dart';
import 'package:doc_link_project/features/auth/register/presentation/views/register_view.dart';
import 'package:doc_link_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String loginView = '/loginview';
  static String registerView = '/registerView';
  static String forgetPasswordView = '/forgetPasswordView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpashView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
