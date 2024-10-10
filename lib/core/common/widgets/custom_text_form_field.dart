import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintTxt;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      cursorColor: AppColors.commonColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        enabled: true,
        hintText: hintTxt,
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
