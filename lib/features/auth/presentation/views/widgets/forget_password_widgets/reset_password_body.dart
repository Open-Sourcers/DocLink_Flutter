import 'package:doc_link_project/features/auth/presentation/views/widgets/custom_description_texts.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/custom_reset_password_button_bloc_consumer.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/custom_reset_password_form.dart';
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
          ),
          const SizedBox(height: 110),
          const CustomResetPasswordForm(),
          const SizedBox(height: 30),
          const CustomResetPasswordButtonBlocConsumer(),
        ],
      ),
    );
  }
}
