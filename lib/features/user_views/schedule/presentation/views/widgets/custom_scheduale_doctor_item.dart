// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_calender_and_time_section.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_scheduale_doctor_item_header.dart';
import 'package:flutter/material.dart';

import 'package:doc_link_project/core/utils/app_colors.dart';

class CustomSchedualeDoctorItem extends StatelessWidget {
  const CustomSchedualeDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: AppColors.white,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomSchedualeDoctorItemHeader(),
            CustomCalenderAndTimeSection(),
          ],
        ),
      ),
    );
  }
}
