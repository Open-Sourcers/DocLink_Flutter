import 'package:flutter/material.dart';
import 'all_specialties_section.dart';
import 'home_advertisements.dart';
import 'search_about_siutable_doctor_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 4,
          child: HomeAdvertisementsSection(),
        ),
        SearchAboutSuitableDoctorSection(),
        SizedBox(height: 20),
        Expanded(
          flex: 2,
          child: AllSpecialtiesSection(),
        ),
      ],
    );
  }
}
