import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLoadingIcon extends StatelessWidget {
  const CustomLoadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppImages.animationsLoadingIcon);
  }
}
