// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintTxt;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? suffix;
  final bool? readOnly;
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
    this.controller,
    this.validator,
    this.keyboardType,
    this.maxLines,
    this.suffix,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType,
      style: Styless.textSemiBold15,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      cursorColor: AppColors.commonColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        enabled: true,
        hintText: hintTxt,
        suffix: suffix,
        hintStyle: Styless.textMedium16,
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
