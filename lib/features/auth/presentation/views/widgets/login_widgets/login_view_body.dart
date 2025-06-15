import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_continue_with_section.dart';
import 'package:doc_link_project/core/common/widgets/custom_fade_animation.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/create_or_have_account_button.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_description_texts.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/login_widgets/login_form.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../manager/services/google_services.dart';

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
              // custom description texts
              CustomFadeInDown(
                duration: animationDuration,
                child: CustomDescriptionTexts(
                  headerTxt: S.of(context).loginHere,
                  description: S.of(context).loginWelcome,
                ),
              ),
              const SizedBox(height: 70),
              // custom text form field section
              const LoginForm(),
              const SizedBox(height: 30),
              // Create account (Register page open) button
              CreateOrHaveAccountButton(
                title: S.of(context).createNewAccount,
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.registerView);
                },
              ),
              const SizedBox(height: 80),
              // Continue with section
              CustomContinueWithSection(
                onPressedOnFace: () {},
                onPressedOnGoogle: () {
                  GoogleServices().signInWithGoogle();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
