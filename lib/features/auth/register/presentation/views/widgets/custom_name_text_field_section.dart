import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

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
          child: CustomTextFormField(hintTxt: S.of(context).firstName),
        ),
        SizedBox(
          width: 175,
          child: CustomTextFormField(hintTxt: S.of(context).lastName),
        ),
      ],
    );
  }
}
