import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class WorkingTimeSection extends StatelessWidget {
  const WorkingTimeSection({super.key, required this.time});
  final String time;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        S.of(context).workingTime,
        style: Styless.textBold18.copyWith(color: AppColors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(time, style: Styless.textRegular16),
      ),
    );
  }
}
