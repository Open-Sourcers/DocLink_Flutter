import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
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
          Text(
            S.of(context).resetYoutPassword,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              color: AppColors.commonColor,
              fontWeight: FontWeight.w900,
              fontFamily: spaceGrotesk,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            S.of(context).plesesResetPass,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: spaceGrotesk,
            ),
          ),
          const SizedBox(height: 110),
          CustomTextFormField(
            hintTxt: S.of(context).resetYoutPassword,
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            hintTxt: S.of(context).confirmPass,
          ),
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
