import 'dart:async';

import 'package:flutter/material.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/features/splash/presentation/views/widgets/splash_view_body.dart';
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
    return const Scaffold(
      backgroundColor: AppColors.commonColor,
      body: SplashViewBody(),
    );
  }

  void navigationMethod() {
    Timer(
      const Duration(seconds: 6),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.onboarding);
      },
    );
  }
}
