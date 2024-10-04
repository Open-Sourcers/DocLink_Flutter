import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        cursorColor: AppColors.commonColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          enabled: true,
          hintText: S.of(context).emailHintTxt,
          hintStyle: const TextStyle(
            color: AppColors.txtFieldTxtColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.commonColor,
              width: 2,
            ),
          ),
          filled: true,
          fillColor: AppColors.txtFieldFilledColor,
        ),
      ),
    );
  }
}
