import 'package:doc_link_project/core/common/widgets/custom_continue_with_section.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/create_or_have_account_button.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_description_texts.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/register_form.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
              CustomDescriptionTexts(
                headerTxt: S.of(context).createAccount,
                description: S.of(context).registerDescription,
              ),
              const SizedBox(height: 20),
              const RegisterForm(),
              const SizedBox(height: 30),
              CreateOrHaveAccountButton(
                title: S.of(context).haveAccount,
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.loginView);
                },
              ),
              const SizedBox(height: 30),
              const CustomContinueWithSection()
            ],
          ),
        ),
      ),
    );
  }
}
