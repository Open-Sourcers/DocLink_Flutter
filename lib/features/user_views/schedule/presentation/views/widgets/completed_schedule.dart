import 'package:doc_link_project/features/user_views/schedule/presentation/enums/schedule_type.dart';
import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/schedule_list_view.dart';
import 'package:flutter/material.dart';

class CompletedSchedule extends StatelessWidget {
  const CompletedSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScheduleListView(
      scheduleType: ScheduleType.completed,
      itemCount: 4,
    );
  }
}
