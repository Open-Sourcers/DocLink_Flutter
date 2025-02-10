import 'dart:async';

import 'package:doc_link_project/core/api/api_keys.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/features/splash/presentation/views/widgets/splash_view_body.dart';
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
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const SplashViewBody(),
    );
  }

  void navigationMethod() {
    Timer(
      const Duration(seconds: 6),
      () {
        var token = getit.get<CacheHelper>().getString(ApiKeys.token);
        if (token != null) {
          GoRouter.of(context).pushReplacement(AppRouter.appBottomNavBar);
        } else {
          GoRouter.of(context).pushReplacement(AppRouter.onboarding);
        }
      },
    );
  }
}
