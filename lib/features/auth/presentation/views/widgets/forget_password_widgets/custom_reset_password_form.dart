import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/functions/validation_of_input_fields.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomResetPasswordForm extends StatelessWidget {
  const CustomResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().resetPasswordFormKey,
      child: Column(
        children: [
          CustomPasswordTextFormField(
            hintTxt: S.of(context).resetYoutPassword,
            controller: context.read<ForgetPasswordCubit>().newPassword,
            validator: (value) {
              return validatorOfPassword(context, value: value);
            },
          ),
          const SizedBox(height: 20),
          CustomPasswordTextFormField(
            hintTxt: S.of(context).confirmPass,
            controller:
                context.read<ForgetPasswordCubit>().passwordComfirmation,
            validator: (value) {
              return validatorOfPassword(context, value: value);
            },
          ),
        ],
      ),
    );
  }
}
