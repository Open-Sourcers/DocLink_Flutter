import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_continue_with_section.dart';
import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/features/auth/common/create_or_have_account_button.dart';
import 'package:doc_link_project/features/auth/register/presentation/views/widgets/custom_name_text_field_section.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70.h),
            Text(
              S.of(context).createAccount,
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
              S.of(context).registerDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: spaceGrotesk,
              ),
            ),
            const SizedBox(height: 20),
            const CustomNameTextFieldSection(),
            const SizedBox(height: 15),
            CustomTextFormField(
              hintTxt: S.of(context).emailHintTxt,
            ),
            const SizedBox(height: 15),
            CustomPasswordTextFormField(
              hintTxt: S.of(context).passwordHintTxt,
            ),
            const SizedBox(height: 15),
            CustomPasswordTextFormField(
              hintTxt: S.of(context).confirmPass,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            CustomButton(
              buttonTitle: S.of(context).signIn,
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            CreateOrHaveAccountButton(
              title: S.of(context).haveAccount,
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 30),
            Text(
              S.of(context).continueWith,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.commonColor,
                fontWeight: FontWeight.w900,
                fontFamily: spaceGrotesk,
              ),
            ),
            const SizedBox(height: 20),
            const CustomContinueWithSection()
          ],
        ),
      ),
    );
  }
}
