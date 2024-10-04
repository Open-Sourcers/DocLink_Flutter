import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/main.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SpashView extends StatelessWidget {
  const SpashView({super.key});

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
      backgroundColor:AppColors.commonColor,
      showLoader: true,
      loadingText: const Text("Loading..."),
      loaderColor: Colors.white,
      navigator: const HomeView(),
      durationInSeconds: 5,
    );
  }
}