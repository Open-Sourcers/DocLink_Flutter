import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/features/auth/common/custom_description_texts.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            CustomDescriptionTexts(
              headerTxt: S.of(context).forgetPassword,
              description: S.of(context).emailToReset,
              fontSize: 18,
            ),
            const SizedBox(height: 20),
            Image.asset(
              AppImages.imagesForgetPass,
              height: 200.h,
            ),
            // Welcome back text
            const SizedBox(height: 20),
            CustomTextFormField(
              hintTxt: S.of(context).emailHintTxt,
            ),
            const SizedBox(height: 50),
            CustomButton(
              buttonTitle: S.of(context).confirm,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.verifyAccountView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
