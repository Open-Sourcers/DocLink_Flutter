import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:flutter/material.dart';

class WorkingTimeSection extends StatelessWidget {
  const WorkingTimeSection({super.key, required this.time});
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          "Working Time",
          style: Styless.textBold18.copyWith(color: AppColors.black),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(time, style: Styless.textRegular16),
        ),
      ),
    );
  }
}
