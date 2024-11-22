import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String hintTxt;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomPasswordTextFormField({
    super.key,
    required this.hintTxt,
    this.controller,
    this.validator,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isShown = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      cursorColor: AppColors.commonColor,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isShown,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isShown = !isShown;
            });
          },
          icon: isShown
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
        contentPadding: const EdgeInsets.all(20),
        enabled: true,
        hintText: widget.hintTxt,
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
