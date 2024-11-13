import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_schedule_doctor_item.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/schedule_view_header.dart';
import 'package:flutter/material.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          SchedualeViewHeader(),
          SizedBox(height: 40),
          CustomScheduleDoctorItem(),
        ],
      ),
    );
  }
}
