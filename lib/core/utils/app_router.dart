import 'package:doc_link_project/features/auth/login/presentation/views/login_view.dart';
import 'package:doc_link_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String login = '/login';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpashView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
