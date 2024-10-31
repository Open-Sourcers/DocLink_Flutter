import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class AboutDoctorSection extends StatelessWidget {
  const AboutDoctorSection({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "About Doctor",
        style: Styless.textBold18.copyWith(color: AppColors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(desc, style: Styless.textRegular16),
      ),
    );
  }
}
