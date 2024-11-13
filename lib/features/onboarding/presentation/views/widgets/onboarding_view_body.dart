import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationAppMethod(),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 25),
            Image.asset(AppImages.imagesOnboarding),
            const SizedBox(height: 30),
            Text(S.of(context).welcome, style: Styless.textSemiBold35),
            const Text('DocLink App', style: Styless.textRegular14),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                  buttonTitle: S.of(context).signIn,
                  onPressed: () {
                    GoRouter.of(context).pushReplacement(AppRouter.loginView);
                  },
                )),
                const SizedBox(width: 25),
                Expanded(
                  child: CustomButton(
                    buttonTitle: S.of(context).SignUp,
                    textColor: AppColors.black,
                    backgroundColor: AppColors.white,
                    onPressed: () {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.registerView);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
