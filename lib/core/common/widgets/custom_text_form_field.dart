import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintTxt;
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.commonColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        enabled: true,
        hintText: hintTxt,
        hintStyle: const TextStyle(
          color: AppColors.txtFieldTxtColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
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
    );
  }
}
