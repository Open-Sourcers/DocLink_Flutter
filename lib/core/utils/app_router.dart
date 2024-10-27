import 'package:doc_link_project/app_bottom_nav_bar.dart';
import 'package:doc_link_project/core/common/views/custom_success_view.dart';
import 'package:doc_link_project/features/auth/presentation/views/forget_password_view.dart';
import 'package:doc_link_project/features/auth/presentation/views/login_view.dart';
import 'package:doc_link_project/features/auth/presentation/views/register_view.dart';
import 'package:doc_link_project/features/auth/presentation/views/verificaition_email_view.dart';
import 'package:doc_link_project/features/user_views/chat/presentation/views/chat_view.dart';
import 'package:doc_link_project/features/user_views/home/presentation/views/home_view.dart';
import 'package:doc_link_project/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:doc_link_project/features/user_views/profile/presentation/views/profile_view.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/schedule_view.dart';
import 'package:doc_link_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String onboarding = '/onboarding';
  static String loginView = '/loginview';
  static String registerView = '/registerView';
  static String forgetPasswordView = '/forgetPasswordView';
  static String verificationView = '/verificationView';
  static String customSuccessView = '/customSuccessView';
  static String appBottomNavBar = '/appBottomNavBar';
  static String homeView = '/homeView';
  static String scheduleView = '/scheduleView';
  static String chatView = '/chatView';
  static String profileView = '/profileView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpashView(),
      ),
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingView(),
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
      GoRoute(
        path: verificationView,
        builder: (context, state) => const VerificaitionEmailView(),
      ),
      GoRoute(
        path: customSuccessView,
        builder: (context, state) => const CustomSuccessView(),
      ),
      GoRoute(
        path: appBottomNavBar,
        builder: (context, state) => const AppBottomNavBar(),
      ),
      //
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: scheduleView,
        builder: (context, state) => const ScheduleView(),
      ),
      GoRoute(
        path: chatView,
        builder: (context, state) => const ChatView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
