import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_continue_with_section.dart';
import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/common/create_or_have_account_button.dart';
import 'package:doc_link_project/features/auth/login/presentation/views/widgets/forget_password_button.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationAppMethod(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 70.h),
              // Login Here text
              Text(
                S.of(context).loginHere,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  color: AppColors.commonColor,
                  fontWeight: FontWeight.w900,
                  fontFamily: spaceGrotesk,
                ),
              ),
              const SizedBox(height: 25),
              // Welcome back text
              Text(
                S.of(context).loginWelcome,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: spaceGrotesk,
                ),
              ),
              const SizedBox(height: 70),
              // Email text form field
              CustomTextFormField(
                hintTxt: S.of(context).emailHintTxt,
              ),
              const SizedBox(height: 25),
              // Password text form field
              CustomPasswordTextFormField(
                hintTxt: S.of(context).passwordHintTxt,
              ),
              const SizedBox(height: 20),
              //forget password button
              const ForgetPasswordButton(),
              const SizedBox(height: 20),
              // Sign in button
              CustomButton(
                buttonTitle: S.of(context).signIn,
                onPressed: () {},
              ),
              const SizedBox(height: 30),
              // Create account (Register page open) button
              CreateOrHaveAccountButton(
                title: S.of(context).createNewAccount,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.registerView);
                },
              ),
              const SizedBox(height: 80),
              // Continue with text
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
              // Continue with buttons
              const CustomContinueWithSection(),
            ],
          ),
        ),
      ),
    );
  }
}
