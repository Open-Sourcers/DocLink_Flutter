import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/features/auth/register/presentation/views/widgets/custom_name_text_field_section.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

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
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          hintTxt: S.of(context).passwordHintTxt,
        ),
        const SizedBox(height: 15),
        CustomPasswordTextFormField(
          hintTxt: S.of(context).confirmPass,
        ),
      ],
    );
  }
}
