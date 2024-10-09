import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_continue_with_section.dart';
import 'package:doc_link_project/core/utils/function/decoration_app_method.dart';
import 'package:doc_link_project/features/auth/common/create_or_have_account_button.dart';
import 'package:doc_link_project/features/auth/common/custom_description_texts.dart';
import 'package:doc_link_project/features/auth/register/presentation/views/widgets/custom_register_text_field_section.dart';
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
              const CustomRegisterTextFieldSection(),
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
              const CustomContinueWithSection()
            ],
          ),
        ),
      ),
    );
  }
}
