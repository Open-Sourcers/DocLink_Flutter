import 'package:doc_link_project/features/user_views/schedule/presentation/views/widgets/schedule_view_header.dart';
import 'package:flutter/material.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SchedualeViewHeader(),
      ],
    );
  }
}
