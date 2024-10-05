import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
          ),
          Image.asset(AppImages.imagesAppLogo),
          const SizedBox(height: 10),
          const Text("DOCTOR", style: Styless.textBold18),
          const Spacer(),
          const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 3,
          ),
          const SizedBox(height: 10),
          Text(
            "Loading ...",
            style: Styless.textMedium14.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
