import 'package:doc_link_project/features/user_views/schedule/presentation/enums/schedule_type.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_calender_and_time_section.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_completed_button.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_schedule_doctor_item_buttons.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_schedule_doctor_item_header.dart';
import 'package:flutter/material.dart';

import 'package:doc_link_project/core/utils/app_colors.dart';

class CustomScheduleDoctorItem extends StatelessWidget {
  const CustomScheduleDoctorItem({
    super.key,
    this.scheduleType = ScheduleType.canceled,
  });
  final ScheduleType scheduleType;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const CustomScheduleDoctorItemHeader(),
            const CustomCalenderAndTimeSection(),
            scheduleType == ScheduleType.completed
                ? const CustomCompletedButton()
                : const CustomScheduleDoctorItemButtons(),
          ],
        ),
      ),
    );
  }
}
