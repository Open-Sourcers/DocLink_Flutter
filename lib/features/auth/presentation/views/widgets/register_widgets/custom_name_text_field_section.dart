import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/presentation/manager/cubits/auth_cubit.dart';
import 'package:doc_link_project/features/auth/presentation/manager/functions/validation_of_input_fields.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNameTextFieldSection extends StatelessWidget {
  const CustomNameTextFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 175,
          child: CustomTextFormField(
            hintTxt: S.of(context).firstName,
            controller: context.read<AuthCubit>().registerFirstName,
            validator: (text) {
              return validatorUserName(context, name: text);
            },
          ),
        ),
        SizedBox(
          width: 175,
          child: CustomTextFormField(
            hintTxt: S.of(context).lastName,
            controller: context.read<AuthCubit>().registerLastName,
            validator: (text) {
              return validatorUserName(context, name: text);
            },
          ),
        ),
      ],
    );
  }
}
