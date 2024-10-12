import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/functions/validation_of_input_fields.dart';
import 'package:doc_link_project/features/auth/presentation/views/widgets/register_widgets/custom_name_text_field_section.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRegisterTextFieldSection extends StatelessWidget {
  const CustomRegisterTextFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomNameTextFieldSection(),
        const SizedBox(height: 15),
        CustomTextFormField(
          hintTxt: S.of(context).emailHintTxt,
          controller: context.read<AuthCubit>().registerEmail,
          validator: (text) {
            return validatorOfEmail(context, value: text);
          },
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          hintTxt: S.of(context).passwordHintTxt,
          controller: context.read<AuthCubit>().registerPassword,
          validator: (text) {
            return validatorOfPassword(context, value: text);
          },
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          hintTxt: S.of(context).confirmPass,
          controller: context.read<AuthCubit>().registerConfirmPassword,
          validator: (text) {
            return validatorOfPassword(context, value: text);
          },
        ),
      ],
    );
  }
}
