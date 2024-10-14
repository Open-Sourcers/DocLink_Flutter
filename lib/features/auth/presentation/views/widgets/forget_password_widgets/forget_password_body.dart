import 'package:doc_link_project/core/utils/app_images.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_description_texts.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'forget_password_form.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationAppMethod(),
      child: SingleChildScrollView(
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
              ),
              const SizedBox(height: 20),
              Image.asset(
                AppImages.imagesSisi,
                height: 190.h,
              ),
              // Welcome back text
              const SizedBox(height: 20),
              const ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
