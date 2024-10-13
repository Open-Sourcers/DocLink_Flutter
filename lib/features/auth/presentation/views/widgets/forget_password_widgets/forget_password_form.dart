
import 'package:doc_link_project/core/common/widgets/custom_button.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintTxt: S.of(context).emailHintTxt,
        ),
        const SizedBox(height: 50),
        CustomButton(
          buttonTitle: S.of(context).confirm,
          onPressed: () {
            context.read<ForgetPasswordCubit>().toVerifyAccount();
          },
        ),
      ],
    );
  }
}
