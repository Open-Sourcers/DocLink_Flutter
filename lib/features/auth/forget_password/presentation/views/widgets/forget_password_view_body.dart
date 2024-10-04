import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Text(
              S.of(context).forgetPassword,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                color: AppColors.commonColor,
                fontWeight: FontWeight.w900,
                fontFamily: spaceGrotesk,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              S.of(context).emailToReset,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: spaceGrotesk,
              ),
            ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
