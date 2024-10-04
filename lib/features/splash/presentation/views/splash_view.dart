import 'dart:async';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/features/auth/login/presentation/views/login_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpashView extends StatefulWidget {
  const SpashView({super.key});

  @override
  State<SpashView> createState() => _SpashViewState();
}

class _SpashViewState extends State<SpashView> {
  @override
  void initState() {
    super.initState();
    navigationMethod();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(AppImages.imagesAppLogo),
      title: const Text(
        "DOCTOR",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.commonColor,
      showLoader: true,
      loadingText: const Text("Loading..."),
      loaderColor: Colors.white,
      navigator: const LoginView(),
      durationInSeconds: 8,
    );
  }

  void navigationMethod() {
    Timer(
      const Duration(seconds: 6),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.login);
      },
    );
  }
}
