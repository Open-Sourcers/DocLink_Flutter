import 'package:doc_link_project/features/user_views/schedule/presentation/enums/schedule_type.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/custom_schedule_doctor_item.dart';
import 'package:flutter/material.dart';

class ScheduleListView extends StatelessWidget {
  const ScheduleListView(
      {super.key, required this.scheduleType, required this.itemCount});
  final ScheduleType scheduleType;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return CustomScheduleDoctorItem(
            scheduleType: scheduleType,
          );
        },
      ),
    );
  }
}
