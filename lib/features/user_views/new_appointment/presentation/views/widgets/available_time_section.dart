import 'package:doc_link_project/core/utils/app_colors.dart';
import 'package:doc_link_project/core/utils/styless.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/available_time_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:doc_link_project/generated/l10n.dart';

class AvailableTimeSection extends StatelessWidget {
  const AvailableTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).availableTime,
          style: Styless.textBold18.copyWith(color: AppColors.black),
        ),
        const SizedBox(height: 10),
        const AvailableTimeGridView(),
      ],
    );
  }
}
