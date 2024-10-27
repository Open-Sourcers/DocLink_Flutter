import 'package:doc_link_project/constants.dart';
import 'package:doc_link_project/core/common/widgets/custom_fade_animation.dart';
import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/functions/validation_of_input_fields.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLoginTextFieldsSection extends StatelessWidget {
  const CustomLoginTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFadeInLeft(
          duration: animationDuration,
          child: CustomTextFormField(
            hintTxt: S.of(context).emailHintTxt,
            controller: context.read<AuthCubit>().loginEmail,
            validator: (text) {
              return validatorOfEmail(context, value: text);
            },
          ),
        ),
        const SizedBox(height: 25),
        // Password text form field
        CustomFadeInLeft(
          duration: animationDuration,
          child: CustomPasswordTextFormField(
            hintTxt: S.of(context).passwordHintTxt,
            controller: context.read<AuthCubit>().loginPassword,
            validator: (text) {
              return validatorOfPassword(context, value: text);
            },
          ),
        ),
      ],
    );
  }
}
