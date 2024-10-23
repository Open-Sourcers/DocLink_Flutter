import 'dart:async';

import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class CustomSuccessView extends StatefulWidget {
  const CustomSuccessView({super.key});

  @override
  State<CustomSuccessView> createState() => _CustomSuccessViewState();
}

class _CustomSuccessViewState extends State<CustomSuccessView> {
  void navigationMethod() {
    Timer(
      const Duration(seconds: 4),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.loginView);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    navigationMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppImages.animationsAnimatedSuccessIcon),
      ),
    );
  }
}
