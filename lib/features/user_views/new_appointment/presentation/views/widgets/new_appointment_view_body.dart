import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/new_appointment_time.dart';
import 'package:flutter/material.dart';

class NewAppointmentViewBody extends StatelessWidget {
  const NewAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          NewAppointmentTime(),
        ],
      ),
    );
  }
}
