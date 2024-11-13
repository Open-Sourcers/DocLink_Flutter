import 'package:flutter/material.dart';

class CompletedSchedule extends StatelessWidget {
  const CompletedSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Completed Schedule'),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Week 1'),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Week 2'),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Week 3'),
        ),
      ],
    );
  }
}
