import 'package:flutter/material.dart';

class CanceledSchedule extends StatelessWidget {
  const CanceledSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Your schedule has been canceled.',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Please check your email for details on when and where your appointment will be.',
        ),
        SizedBox(height: 16),
        Text(
          'If you have any questions, feel free to reach out.',
        ),
        Text(
          'Customer Support: (123) 456-7890',
        ),
      ],
    );
  }
}
