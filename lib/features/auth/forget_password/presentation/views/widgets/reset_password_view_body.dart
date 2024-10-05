import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/features/auth/common/custom_description_texts.dart';
import 'package:doc_link_project/features/auth/forget_password/presentation/views/widgets/custom_reset_password_text_fields.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 70.h),
          CustomDescriptionTexts(
            headerTxt: S.of(context).resetYoutPassword,
            description: S.of(context).plesesResetPass,
            fontSize: 16,
          ),
          const SizedBox(height: 110),
          const CustomResetPasswordTextFields(),
          const SizedBox(height: 30),
          CustomButton(
            buttonTitle: S.of(context).resetPass,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
