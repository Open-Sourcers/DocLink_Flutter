import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              S.of(context).loginHere,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                color: AppColors.commonColor,
                fontWeight: FontWeight.w900,
                fontFamily: spaceGrotesk,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              S.of(context).loginWelcome,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: spaceGrotesk,
              ),
            ),
            const SizedBox(height: 70),
            CustomTextFormField(
              hintTxt: S.of(context).emailHintTxt,
            ),
            const SizedBox(height: 25),
            CustomPasswordTextFormField(
              hintTxt: S.of(context).passwordHintTxt,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Text(
                S.of(context).forgetPassword,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: spaceGrotesk,
                  fontWeight: FontWeight.bold,
                  color: AppColors.commonColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonTitle: S.of(context).signIn,
              onPressed: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
