import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/active_day_card.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/in_active_day_card.dart';
import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/custom_drop_down_feild.dart';
import 'package:flutter/material.dart';

class NewAppointmentTime extends StatelessWidget {
  const NewAppointmentTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDropDownFeild(),
        InActiveDayCard(day: 16, month: 'Mar'),
        ActiveDayCard(day: 16, month: 'Mar'),
      ],
    );
  }
}
