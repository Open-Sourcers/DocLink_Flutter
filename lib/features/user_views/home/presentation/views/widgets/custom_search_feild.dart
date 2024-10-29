import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class CustomSearchFeild extends StatelessWidget {
  const CustomSearchFeild(
      {super.key, this.onChanged, this.suffixIcon, this.controller});
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        style: Styless.textMedium18,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search Doctor",
          hintStyle: Styless.textMedium16,
          prefixIcon: const Icon(Icons.search, size: 30),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
