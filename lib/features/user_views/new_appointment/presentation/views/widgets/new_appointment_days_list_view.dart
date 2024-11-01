import 'package:doc_link_project/features/user_views/new_appointment/presentation/views/widgets/custom_day_card.dart';
import 'package:flutter/material.dart';

class NewAppointmentDaysListView extends StatefulWidget {
  const NewAppointmentDaysListView({super.key});

  @override
  State<NewAppointmentDaysListView> createState() =>
      _NewAppointmentDaysListViewState();
}

class _NewAppointmentDaysListViewState
    extends State<NewAppointmentDaysListView> {
  final List monthes = ["Mon.", "Tue.", "Wed.", "Thu.", "Fri.", "Sat.", "Sun."];
  int currentDay = 0;
  int dayNum = 30;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dayNum,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 18 : 0,
              right: index == dayNum - 1 ? 0 : 18,
            ),
            child: CustomDayCard(
              onTap: () {
                currentDay = index;
                setState(() {});
              },
              day: index + 1,
              month: monthes[index % 7],
              isActive: currentDay != index,
            ),
          );
        },
      ),
    );
  }
}
