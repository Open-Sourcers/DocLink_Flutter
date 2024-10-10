import 'package:doc_link_project/core/common/widgets/custom_password_text_form_field.dart';
import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomLoginTextFieldsSection extends StatelessWidget {
  const CustomLoginTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintTxt: S.of(context).emailHintTxt,
        ),
        const SizedBox(height: 25),
        // Password text form field
        CustomPasswordTextFormField(
          hintTxt: S.of(context).passwordHintTxt,
        ),
      ],
    );
  }
}
