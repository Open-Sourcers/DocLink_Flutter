import 'package:doc_link_project/core/common/widgets/custom_text_form_field.dart';
import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class WriteYourProblemSection extends StatelessWidget {
  const WriteYourProblemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            S.of(context).writeYourProblems,
            style: Styless.textBold18.copyWith(color: AppColors.black),
          ),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          hintTxt: S.of(context).writeYourProblems,
          maxLines: 8,
        ),
      ],
    );
  }
}
