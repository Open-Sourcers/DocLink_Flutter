import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/forget_password_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/functions/validation_of_input_fields.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/forget_password_widgets/forget_password_botton_bloc_consumer.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().forgetedPasswordFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintTxt: S.of(context).emailHintTxt,
            controller:
                context.read<ForgetPasswordCubit>().forgetedPasswordEmail,
            validator: (email) {
              return validatorOfEmail(context, value: email);
            },
          ),
          const SizedBox(height: 50),
          const ForgetPasswordBottonBlocConsumer(),
        ],
      ),
    );
  }
}
