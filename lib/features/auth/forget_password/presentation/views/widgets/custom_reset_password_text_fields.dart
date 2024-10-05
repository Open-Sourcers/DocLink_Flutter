import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomResetPasswordTextFields extends StatelessWidget {
  const CustomResetPasswordTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPasswordTextFormField(
          hintTxt: S.of(context).resetYoutPassword,
        ),
        const SizedBox(height: 20),
        CustomPasswordTextFormField(
          hintTxt: S.of(context).confirmPass,
        ),
      ],
    );
  }
}
